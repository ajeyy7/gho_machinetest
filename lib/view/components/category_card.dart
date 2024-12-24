import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final String image;
  const CategoryContainer({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 130,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ], borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              height: 30,
              color: primary,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
