import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final borderRadius = BorderRadius.circular(5);
    return Column(
      children: [
        SizedBox(
          width: screenSize.width - 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo[500],
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              ),
            ),
            child: const Text('Set Up'),
            onPressed: () async {
            
            },
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: screenSize.width - 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              ),
            ),
            child: const Text(
              'See What You Can Download',
              softWrap: false,
              style: TextStyle(
                overflow: TextOverflow.fade,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
