import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/shadows/shadows.dart';
import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/domain/search/models/model_top_search.dart';
import 'package:share_it/share_it.dart';
import 'package:video_player/video_player.dart';

final fastlaughVideos = <String>[
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
];

final userNames = [
  'Corinne Gutierrez',
  'Lucca Ball',
  'Ila McGuire',
  'Drew Dawson',
  'Cataleya Johnson',
  'Eugene Johns',
  'Adeline Lowe',
  'Greyson Beasley',
  'Delilah Lamb',
  'Ivan Dickerson',
  'Esther Chan',
  'Christian Keller',
  'Cassandra Stuart',
  'Chris Burke',
];

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getTopSearch());
    });
    bool isPlaying = false;
    bool liked = false;
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          100,
          (index) => Stack(
            alignment: Alignment.bottomCenter,
            children: [
              FastLaughVideo(
                videoUrl: fastlaughVideos[index % fastlaughVideos.length],
                onStateChanged: (isPlaying) {
                  isPlaying = isPlaying;
                },
                screenState: MediaQuery.of(context),
              ),
              FastLaughActions(
                liked: liked,
                isPlaying: isPlaying,
                shadow: shadow,
                index: index,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FastLaughVideo extends StatefulWidget {
  const FastLaughVideo({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
    required this.screenState,
  });
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  final MediaQueryData screenState;
  @override
  State<FastLaughVideo> createState() => _FastLaughVideoState();
}

class _FastLaughVideoState extends State<FastLaughVideo> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();

    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    videoPlayerController.addListener(() {
      setState(() {});
      videoPlayerController.play();
    });
    videoPlayerController.setLooping(true);
    videoPlayerController.initialize().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return videoPlayerController.value.isInitialized
        ? AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: VideoPlayer(videoPlayerController),
          )
        : const Center(child: CircularProgressIndicator());
  }
}

class FastLaughActions extends StatelessWidget {
  final int index;
  final Shadow shadow;
  final bool isPlaying;
  bool liked;
  FastLaughActions({
    super.key,
    required this.shadow,
    required this.index,
    required this.isPlaying,
    required this.liked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.50),
            child: Icon(
              Icons.volume_off,
              shadows: [
                Shadow(blurRadius: 25, color: Colors.black.withOpacity(0.2))
              ],
            ),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  UserAccountLogo(
                    index: index,
                  ),
                  ValueListenableBuilder(
                      valueListenable: likedMovies,
                      builder: (ctx, changedList, widget) {
                        return TextBottonWithIconVertical(
                          icon: (liked)
                              ? Icons.emoji_emotions
                              : Icons.emoji_emotions_outlined,
                          label: 'LOL',
                          onPressed: () {
                            final movieTitle = state
                                    .topSearch[index % state.topSearch.length]
                                    .name ??
                                state.topSearch[index % state.topSearch.length]
                                    .originalName ??
                                state.topSearch[index % state.topSearch.length]
                                    .title;
                            if (changedList.contains('$movieTitle')) {
                              changedList.remove('$movieTitle');

                              liked = false;
                              likedMovies.notifyListeners();
                            } else {
                              changedList.add('$movieTitle');
                              liked = true;
                              likedMovies.notifyListeners();
                            }
                          },
                        );
                      }),
                  const TextBottonWithIconVertical(
                    icon: Icons.add,
                    label: 'My List',
                  ),
                  TextBottonWithIconVertical(
                      icon: Icons.share_outlined,
                      label: 'Share',
                      onPressed: () {
                        ShareIt.link(
                          androidSheetTitle: 'Poster Url',
                          url: (imageAppendUrl +
                              state.topSearch[index % state.topSearch.length]
                                  .backdropPath
                                  .toString()),
                        );
                      }),
                  TextBottonWithIconVertical(
                    icon:
                        isPlaying ? Icons.pause_sharp : Icons.play_arrow_sharp,
                    label: isPlaying ? 'Pause' : 'Play',
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class UserAccountLogo extends StatelessWidget {
  final int index;
  const UserAccountLogo({
    super.key,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      // width: 50,
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          late final TopSearchModel movies;
          String? movieTitle;
          if (!state.isError &&
              !state.isLoading &&
              state.topSearch.isNotEmpty) {
            movies = state.topSearch[index % state.topSearch.length];

            movieTitle = movies.name ?? movies.originalName ?? movies.title;
            movieTitle = movieTitle?.replaceAll(' ', '\n');
          }
          return (state.isError || state.isLoading || state.topSearch.isEmpty)
              ? const CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person_2_rounded),
                )
              : Column(
                  // alignment: Alignment.topCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          '$imageAppendUrl/${movies.backdropPath}'),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        // maxLines: 1,
                        '$movieTitle',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          shadows: [
                            shadow,
                          ],
                          height: 0.9,
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}

class TextBottonWithIconVertical extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  const TextBottonWithIconVertical({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              shadows: [
                shadow,
              ],
            ),
            Text(
              label,
              style: TextStyle(shadows: [
                shadow,
              ]),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
