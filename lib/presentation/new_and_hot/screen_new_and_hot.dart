import 'package:flutter/material.dart';
import 'package:netflix/core/fonts/font_constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import '../widgets/app_bar_text.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: fontOutFit,
      fontSize: fontSizeMedium,
      fontWeight: FontWeight.bold,
    );
    List<Widget> tabs = [
      Text(
        '🍿 Coming Soon',
        style: textStyle,
      ),
      Text(
        '👀 Everyone\'s Watching',
        style: textStyle,
      ),
    ];
    final borderRadius = BorderRadius.circular(100);
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const AppBarText(
            title: 'New & Hot',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: tabs,
            //scrollable tabBar
            isScrollable: true,
            //colors
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            //selected label padding
            labelPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            padding: const EdgeInsets.all(5),
            indicator: BoxDecoration(
              borderRadius: borderRadius,
              color: Colors.white,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ComingSoonWidget(),
            EveryonesWatchingWidget(),
          ],
        ),
      ),
    );
  }
}
