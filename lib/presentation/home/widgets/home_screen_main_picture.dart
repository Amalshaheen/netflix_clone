import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laughs/screen_fast_laughs.dart';

class HomeScreenMainPicture extends StatelessWidget {
  const HomeScreenMainPicture({
    super.key,
    required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    const double radius = 3;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 130,
          child: Image.network(
            fit: BoxFit.cover,
            imageLink,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextBottonWithIconVertical(icon: Icons.add, label: 'My List'),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow_sharp),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Play'),
              ),
              style: ButtonStyle(
                foregroundColor: const WidgetStatePropertyAll(Colors.black),
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
            ),
            const TextBottonWithIconVertical(
                icon: Icons.info_outline, label: 'Info'),
          ],
        )
      ],
    );
  }
}
