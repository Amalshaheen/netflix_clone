import 'package:flutter/material.dart';

import '../../../core/fonts/font_constants.dart';
import '../../../core/sized_boxes/sized_boxes.dart';
import 'movie_tile9x16.dart';
import 'movie_tile_title_with_actions.dart';

class NewnHotMovieTile extends StatelessWidget {
  const NewnHotMovieTile({
    super.key,
    required this.date,
    required this.thumbnail,
    required this.title,
    required this.description,
  });
  final DateTime date;
  final String thumbnail;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: (screenSize.height * 0.60),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateWidgetNewnHot(date: date),
          Expanded(
            child: ComingSoonMovieTile(
              description: description,
              date: date,
              thumbnail: thumbnail,
              title: title,
            ),
          )
        ],
      ),
    );
  }
}

class ComingSoonMovieTile extends StatelessWidget {
  const ComingSoonMovieTile({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.description,
    required this.date,
  });
  final String thumbnail;
  final String title;
  final String description;
  final DateTime date;

  final String imageLink =
      'https://images.ctfassets.net/y2ske730sjqp/4aEQ1zAUZF5pLSDtfviWjb/ba04f8d5bd01428f6e3803cc6effaf30/Netflix_N.png?w=300';
  @override
  Widget build(BuildContext context) {
    final monthsFull = [
      'January',
      'Febuary',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Video Thumbnail
        MovieTile9x16(thumbnail: thumbnail),
        kHeightBox8,
        //Movie Description
        MovieTileTitleWithActions(
          widget: Text(
            title,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: TextStyle(
              fontSize: 35,
              height: 1,
              fontFamily: recursiveFontTemp,
            ),
          ),
          actions: [
            NnHActionsButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
                label: 'Remind me',
                onPressed: () {}),
            NnHActionsButton(
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              label: 'Info',
              onPressed: () {},
            ),
          ],
        ),
        Text(
          'Coming on ${monthsFull[(date.month - 1) % 12]}',
          style: TextStyle(
            fontFamily: fontOutFit,
            color: Colors.white.withOpacity(0.75),
          ),
        ),
        kHeightBox5,
        Row(
          children: [
            Image.network(
              imageLink,
              height: 15,
            ),
            const Text(
              ' Film',
            )
          ],
        ),
        //Title of Movie
        Text(
          title,
          style: TextStyle(
            fontFamily: fontOutFit,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          description,
          style: TextStyle(
            // fontFamily: fontOutFit,
            color: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}

class DateWidgetNewnHot extends StatelessWidget {
  const DateWidgetNewnHot({
    super.key,
    required this.date,
  });
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final months = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: SizedBox(
        width: 35,
        child: Column(
          children: [
            Text(
              months[(date.month - 1) % 12],
              style: TextStyle(
                fontFamily: fontOutFit,
                fontSize: 15,
                color: Colors.white.withOpacity(0.5),
                height: 1,
              ),
            ),
            Text(
              '${date.day}',
              style: TextStyle(
                fontFamily: fontOutFit,
                fontSize: 28,
                decorationThickness: 0,
                height: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
