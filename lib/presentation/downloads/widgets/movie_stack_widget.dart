import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/fonts/font_constants.dart';
import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/presentation/widgets/movie_tile_2x3.dart';

import '../../widgets/skeleton_loading.dart';

class MovieStack extends StatelessWidget {
  const MovieStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeMedium,
              fontFamily: fontOutFit),
        ),
        const SizedBox(height: 8),
        const Text(
          '''We'll download a personalised selection of
movies and shows for you, so there's
always something to watch on your
device''',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            Widget movieStackSkeletonLoading(double scale) => SkeletonLoading(
                width: 100 * scale,
                height: 150 * scale,
                borderRadius: BorderRadius.circular(5));
            return SizedBox(
              height: screenSize.width - 100,
              width: screenSize.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white38,
                    radius: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 15),
                    child: Transform.rotate(
                        angle: 0.401426,
                        child: (state.isLoading || state.downloads.isEmpty)
                            ? movieStackSkeletonLoading(1)
                            : MovieTile2X3(
                                url:
                                    '$imageAppendUrl${state.downloads[2].posterPath}')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150, top: 15),
                    child: Transform.rotate(
                      angle: -0.401426,
                      child: (state.isLoading || state.downloads.isEmpty)
                          ? movieStackSkeletonLoading(1)
                          : MovieTile2X3(
                              url:
                                  '$imageAppendUrl${state.downloads[1].posterPath}'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade900.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                    child: (state.isLoading || state.downloads.isEmpty)
                        ? movieStackSkeletonLoading(1.2)
                        : MovieTile2X3(
                            url:
                                '$imageAppendUrl${state.downloads[0].posterPath}',
                            scaleFactor: 1.2,
                          ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
