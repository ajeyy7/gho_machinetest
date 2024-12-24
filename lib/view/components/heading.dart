import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAllPressed;
  final bool showSeeAll;

  const Header({
    super.key,
    required this.title,
    this.onSeeAllPressed,
    this.showSeeAll = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          showSeeAll ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15.5,
          ),
        ),
        if (onSeeAllPressed != null)
          Visibility(
            visible: showSeeAll,
            child: TextButton(
              onPressed: onSeeAllPressed,
              child: const Text(
                'See All',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
      ],
    );
  }
}
