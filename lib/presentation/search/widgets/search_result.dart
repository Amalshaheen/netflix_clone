import 'package:flutter/material.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/domain/search/models/model_search.dart';

import 'package:netflix/presentation/widgets/skeleton_loading.dart';
import 'package:netflix/presentation/widgets/title_card_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget(
      {super.key, required this.searchResult, required this.isLoading});
  final List<SearchModel> searchResult;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleCardWidget(
              title: ' Search Result ',
            ),
            (!isLoading)
                ? Text('results : ${searchResult.length}  ')
                : const SizedBox()
          ],
        ),
        kHeightBox8,
        Expanded(
          child: GridView.count(
            childAspectRatio: 5 / 7,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: List.generate(
              (isLoading) ? 30 : searchResult.length,
              (index) {
                return (isLoading)
                    ? SkeletonLoading(
                        borderRadius: BorderRadius.circular(5),
                      )
                    : MainCard(
                        posterUrl:
                            '$imageAppendUrl${searchResult[index].posterPath}',
                      );
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.posterUrl,
  });
  final String posterUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
        posterUrl,
        height: 250,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => const SkeletonLoading(
          height: 250,
          child: Center(
              child: Text(
            'Error while loading image',
            style: TextStyle(color: Colors.red),
          )),
        ),
      ),
    );
  }
}
