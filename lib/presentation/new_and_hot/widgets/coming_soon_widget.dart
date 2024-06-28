import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/sized_boxes/sized_boxes.dart';
import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/presentation/new_and_hot/widgets/newn_hot_movie_tile.dart';

import '../../../application/hot_and_new/hot_and_new_bloc.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<HotAndNewBloc>(context).add(
        const HotAndNewEvent.initializeComingSoon(),
      ),
    );
    return RefreshIndicator(
      onRefresh: () async{
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const HotAndNewEvent.initializeComingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return Center(child: Text('Error while getting data'));
          } else if (state.comingSoonList.results == null ||
              state.comingSoonList.results!.isEmpty) {
            return Center(
                child: Text('Error while getting data:List is Empty'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (BuildContext context, int index) {
              state.comingSoonList.results!.sort(
                (a, b) => b.releaseDate!.compareTo(a.releaseDate!),
              );
              final result = state.comingSoonList.results![index];
              print(result.releaseDate);
              return NewnHotMovieTile(
                thumbnail: "$imageAppendUrl${result.backdropPath}",
                date: DateTime.parse(result.releaseDate ?? '1/1/2001'),
                title: result.title ?? 'no title',
                description: result.overview ?? 'no overview',
              );
            },
            separatorBuilder: (BuildContext context, int index) => kHeightBox15,
            itemCount: state.comingSoonList.results!.length,
          );
        },
      ),
    );
  }
}
