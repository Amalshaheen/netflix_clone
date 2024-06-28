import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/skeleton_loading.dart';

class MovieTile2X3 extends StatelessWidget {
  const MovieTile2X3({
    super.key,
    required this.url,
    this.scaleFactor = 1,
  });

  final String url;
  final double scaleFactor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
        url,
        height: 150 * scaleFactor,
        width: 100 * scaleFactor,
        loadingBuilder: (context, child, loadingProgress) =>
            (loadingProgress != null)
                ? SkeletonLoading(
                    width: 100 * scaleFactor,
                    height: 150 * scaleFactor,
                    borderRadius: BorderRadius.circular(5),
                  )
                : child,
        errorBuilder: (context, error, stackTrace) => Container(
          color: Colors.red[100],
          child: const Center(
            child: Icon(Icons.warning_amber),
          ),
        ),
      ),
    );
  }
}
