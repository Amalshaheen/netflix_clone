import 'package:flutter/material.dart';

class SmartDownload extends StatelessWidget {
  const SmartDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
          style: const ButtonStyle(
              foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)),
          onPressed: () {},
          icon: const Icon(Icons.settings),
          label: const Text('Smart Downloads'),
        ),
        const Spacer(),
      ],
    );
  }
}
