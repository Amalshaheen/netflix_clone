import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, changedIndex, child) {
        return BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 10,
          currentIndex: changedIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_rounded),
              label: 'Fast Laughs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download_rounded),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
