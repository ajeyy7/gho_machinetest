import 'package:flutter/material.dart';

class ServiceContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const ServiceContainer({
    super.key,
    required this.text,
    required this.icon,
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
            children: [Icon(icon), Text(text)],
          ),
        ),
      ),
    );
  }
}
