import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/presentation/downloads/widgets/smart_download_widget.dart';
import 'package:netflix/presentation/downloads/widgets/bottom_buttons_widget.dart';
import 'package:netflix/presentation/downloads/widgets/movie_stack_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_text.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });

    final screens = [
      const SmartDownload(),
      const MovieStack(),
      const BottomButtons(),
    ];

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            appBarLeading: AppBarText(
              title: 'Downloads',
            ),
          )),
      body: ListView.separated(
        itemBuilder: (context, index) => screens[index],
        separatorBuilder: (context, index) => const SizedBox(height: 50),
        itemCount: screens.length,
      ),
    );
  }
}
