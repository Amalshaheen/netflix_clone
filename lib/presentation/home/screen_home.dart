import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/fonts/font_constants.dart';
import 'package:netflix/presentation/home/widgets/home_screen_main_picture.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';
import '../../core/strings/urls.dart';
import 'widgets/movie_tile_list.dart';
import 'widgets/movie_tile_list_with_number.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) =>
          BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initialize()),
    );
    const double appBarHeight = 120;
    final textStyle = TextStyle(
      color: Colors.white,
      fontFamily: fontOutFit,
    );

    final ValueNotifier<bool> isScrolledUp = ValueNotifier(true);

    return SafeArea(
      child: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          // if ScrollDirection.reverse , Then AppBar is Hidden
          // Otherwise it's shown
          if (notification.direction == ScrollDirection.reverse) {
            isScrolledUp.value = false;
          } else if (notification.direction == ScrollDirection.forward) {
            isScrolledUp.value = true;
          }
          return true;
        },
        child: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state.isError) {
                  return Center(child: Text('Error while getting data'));
                } else if (state.releasedInThePastYearList.isEmpty ||
                    state.trendingNowList.isEmpty ||
                    state.top10TVShowsInIndiaTodayList.isEmpty ||
                    state.tenseDramaList.isEmpty) {
                  return Center(
                      child: Text('Error while getting data:List is Empty'));
                }
                return ListView(
                  children: [
                    HomeScreenMainPicture(
                        imageLink:
                            '$imageAppendUrl${state.top10TVShowsInIndiaTodayList[0].posterPath}'),
                    MovieTileList(
                      title: 'Released in the Past Year',
                      movieList: state.releasedInThePastYearList.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList(),
                    ),
                    MovieTileList(
                      title: 'Trending Now',
                      movieList: state.trendingNowList.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList(),
                    ),
                    MovieTileListWithNumber(
                      title: 'Top 10 TV Shows in India Today',
                      movieList: state.top10TVShowsInIndiaTodayList.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList(),
                    ),
                    MovieTileList(
                      title: 'Tense Drama',
                      movieList: state.tenseDramaList.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList(),
                    ),
                  ],
                );
              },
            ),
            ValueListenableBuilder(
              valueListenable: isScrolledUp,
              builder: (context, showAppBar, child) {
                if ((showAppBar)) {
                  return Container(
                    height: appBarHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.75),
                          Colors.transparent
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppBarWidget(
                          appBarLeading: Image.network(
                            'https://images.ctfassets.net/y2ske730sjqp/4aEQ1zAUZF5pLSDtfviWjb/ba04f8d5bd01428f6e3803cc6effaf30/Netflix_N.png?w=300',
                            height: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'TV Shows',
                                style: textStyle,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Movies',
                                style: textStyle,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Categories',
                                style: textStyle,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
