import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const CategoryContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 130,
        decoration: BoxDecoration(
           boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Icon(icon), Text(text)],
        ),
      ),
    );
  }
}
