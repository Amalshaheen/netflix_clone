import 'package:flutter/material.dart';

class MovieTileTitleWithActions extends StatelessWidget {
  const MovieTileTitleWithActions({
    super.key,
    required this.widget,
    required this.actions,
  });

  final Widget widget;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: widget),
        Row(
          children: actions,
        )
      ],
    );
  }
}

class NnHActionsButton extends StatelessWidget {
  const NnHActionsButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });
  final Icon icon;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: icon,
          padding: EdgeInsets.zero,
          onPressed: onPressed,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 10,
            height: 1,
          ),
        )
      ],
    );
  }
}
