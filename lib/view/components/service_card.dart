import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';

class ServiceContainer extends StatelessWidget {
  final String text;
  final String image;
  const ServiceContainer({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 180,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ], borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 35,
                color: primary,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
