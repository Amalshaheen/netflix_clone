import 'package:flutter/material.dart';

class MovieTile9x16 extends StatelessWidget {
  const MovieTile9x16({
    super.key,
    required this.thumbnail,
  });

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(thumbnail), fit: BoxFit.cover),
          ),
          //9:16 Aspect Ratio
          height: screenSize.width * 9 / 16,
          // width: screenSize.width,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.5),
            child: Icon(
              Icons.volume_off_outlined,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
        )
      ],
    );
  }
}
