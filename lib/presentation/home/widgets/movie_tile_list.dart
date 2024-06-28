import 'package:flutter/cupertino.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/presentation/widgets/movie_tile_2x3.dart';
import 'package:netflix/presentation/widgets/title_card_widget.dart';

class MovieTileList extends StatelessWidget {
  const MovieTileList({
    super.key,
    required this.title,
    required this.movieList,
  });
  final String title;
  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
  movieList.shuffle();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleCardWidget(title: title),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemBuilder: (context, index) =>
                MovieTile2X3(url: movieList[index]),
            itemCount: 20,
            separatorBuilder: (context, index) => kWidthBox8,
            scrollDirection: Axis.horizontal,
          ),
        ),
        kHeightBox8,
      ],
    );
  }
}
