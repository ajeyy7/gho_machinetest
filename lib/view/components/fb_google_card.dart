import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gho_machinetest/view/components/color.dart';

class FbGoogleCard extends StatelessWidget {
  final String text;
  final String assetName;
  const FbGoogleCard({
    super.key,
    required this.text,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
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
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                assetName,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: primary),
            )
          ],
        ),
      ),
    );
  }
}
