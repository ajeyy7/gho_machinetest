import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  final double width;
  final void Function()? onTap;
  const CommonButton(
      {super.key,
      this.onTap,
      required this.color,
      required this.widget,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(child: widget),
      ),
    );
  }
}
