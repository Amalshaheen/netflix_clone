import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/movie_tile_2x3.dart';

class MovieTileStack extends StatelessWidget {
  const MovieTileStack({
    super.key,
    required this.index, required this.movieUrl,
  });
  final int index;
  final String movieUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Row(
          children: [
            const SizedBox(
              width: 35,
              height: double.infinity,
            ),
            MovieTile2X3(
                url:
                    movieUrl,),
          ],
        ),
        Positioned(
          bottom: -35,
          left: -1,
          child: BorderedText(
            strokeCap: StrokeCap.butt,
            strokeWidth: 5,
            strokeColor: Colors.white,
            strokeJoin: StrokeJoin.miter,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: -10,
                fontSize: 110,
                color: Colors.black.withOpacity(1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
