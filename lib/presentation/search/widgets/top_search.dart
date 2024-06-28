import 'package:flutter/material.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/domain/search/models/model_top_search.dart';
import 'package:netflix/presentation/widgets/skeleton_loading.dart';
import 'package:netflix/presentation/widgets/title_card_widget.dart';

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({
    super.key,
    required this.topSearch,
    required this.isLoading,
  });
  final List<TopSearchModel> topSearch;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleCardWidget(
          title: 'Top Searches',
        ),
        kHeightBox8,
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) => (isLoading || topSearch.isEmpty)
              ? const TopSearchTile(
                  isLoading: true,
                )
              : TopSearchTile(
                  isLoading: false,
                  title:
                      '${topSearch[index].title ?? topSearch[index].name ?? topSearch[index].originalName}',
                  imageUrl: '$imageAppendUrl${topSearch[index].backdropPath}',
                ),
          separatorBuilder: (context, index) => kHeightBox8,
          itemCount: (isLoading) ? 10 : topSearch.length,
        ))
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isLoading;
  const TopSearchTile({
    super.key,
    this.imageUrl = '',
    this.title = '',
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: (isLoading)
                  ? SkeletonLoading(
                      height: 70,
                      borderRadius: BorderRadius.circular(5),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        height: 70,
                        errorBuilder: (context, error, stackTrace) {
                          return SkeletonLoading(
                            height: 70,
                            borderRadius: BorderRadius.circular(5),
                            child: const Text(
                              'Error while loading image',
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      ),
                    )
              // Container(
              //     decoration: BoxDecoration(
              //         color: Colors.grey,
              //         borderRadius: BorderRadius.circular(5),
              //         image: DecorationImage(
              //             fit: BoxFit.cover, image: NetworkImage(imageUrl))),
              //     height: 70,
              //   ),
              ),
          Flexible(
            fit: FlexFit.tight,
            flex: 8,
            child: (isLoading)
                ? Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        SkeletonLoading(
                          height: 10,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        kHeightBox5,
                        SkeletonLoading(
                          height: 10,
                          width: 200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ],
                    ),
                  )
                : Text(
                    title,
                    textAlign: TextAlign.start,
                  ),
          ),
          Flexible(
            flex: 2,
            child: (isLoading)
                ? const SkeletonLoading(
                    height: 20,
                    shape: BoxShape.circle,
                  )
                : Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
