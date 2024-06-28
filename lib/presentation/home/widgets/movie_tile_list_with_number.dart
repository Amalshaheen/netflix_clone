import 'package:flutter/cupertino.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/presentation/home/widgets/movie_tile_stack.dart';
import 'package:netflix/presentation/widgets/title_card_widget.dart';

class MovieTileListWithNumber extends StatelessWidget {
  const MovieTileListWithNumber({
    super.key,
    required this.title,
    required this.movieList,
  });
  final String title;
  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleCardWidget(title: title),
        LimitedBox(
          maxHeight: 150,
          child: ListView.builder(
            itemBuilder: (context, index) => MovieTileStack(
              index: index,
              movieUrl: movieList[index],
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
        kHeightBox8,
      ],
    );
  }
}
