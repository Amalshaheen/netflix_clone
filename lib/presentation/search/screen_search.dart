import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/domain/core/debouncer.dart';
import 'package:netflix/presentation/search/widgets/top_search.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<SearchBloc>(context)
            .add(const SearchEvent.getTopSearch());
      },
    );
    final debouncer = Debouncer(milliseconds: 1000);
    String textFieldValue = '';
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CupertinoSearchTextField(
              style: const TextStyle(color: kwhite),
              prefixIcon: const Icon(Icons.search),
              suffixIcon: const Icon(Icons.close),
              itemColor: Colors.grey,
              backgroundColor: Colors.grey[850],
              onChanged: (value) {
                textFieldValue = value;
                debouncer.run(() => BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.search(value)));
              },
            ),
          ),
          kHeightBox8,
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResult.isEmpty && textFieldValue.isEmpty) {
                  return TopSearchWidget(
                    topSearch: state.topSearch,
                    isLoading: state.isLoading,
                  );
                } else if (state.searchResult.isNotEmpty || state.isLoading) {
                  return SearchResultWidget(
                    searchResult: state.searchResult,
                    isLoading: state.isLoading,
                  );
                } else {
                  return Builder(
                    builder: (context) {
                      Future.delayed(const Duration(seconds: 2));
                      return const Center(
                        child: Text('Result Not Found!'),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
