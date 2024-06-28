import 'package:flutter/material.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.appBarLeading});
  final Widget appBarLeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidthBox8,
        appBarLeading,
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            color: Colors.white,
          ),
        ),
        kWidthBox8,
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        kWidthBox8,
      ],
    );
  }
}
