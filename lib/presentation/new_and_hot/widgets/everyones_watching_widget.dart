import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/core/strings/urls.dart';

import '../../../core/fonts/font_constants.dart';
import 'movie_tile9x16.dart';
import 'movie_tile_title_with_actions.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<HotAndNewBloc>(context).add(
        const HotAndNewEvent.initializeEveryonesWatching(),
      ),
    );
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const HotAndNewEvent.initializeEveryonesWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return Center(child: Text('Error while getting data'));
          } else if (state.everyonesWatchingList.results == null ||
              state.everyonesWatchingList.results!.isEmpty) {
            return Center(
                child: Text('Error while getting data:List is Empty'));
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (BuildContext context, int index) {
              final result = state.everyonesWatchingList.results![index];
              print('$result every');
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    result.title ?? 'no title',
                    style: TextStyle(
                      fontFamily: fontOutFit,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeightBox5,
                  Text(result.overview ?? 'no overview'),
                  kHeightBox15,
                  MovieTile9x16(
                      thumbnail: '$imageAppendUrl${result.backdropPath}'),
                  MovieTileTitleWithActions(
                    widget: Text(
                        DateTime.parse(result.releaseDate ?? '01-01-2001')
                            .toIso8601String()),
                    actions: [
                      NnHActionsButton(
                        icon: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        label: 'Share',
                        onPressed: () {},
                      ),
                      NnHActionsButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: 'My List',
                        onPressed: () {},
                      ),
                      NnHActionsButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        label: 'Play',
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) => kHeightBox15,
            itemCount: state.everyonesWatchingList.results!.length,
          );
        },
      ),
    );
  }
}
