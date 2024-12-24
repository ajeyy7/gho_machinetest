import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';

class OfferContainer extends StatelessWidget {
  final String text;
  final String text2;

  final String image;
  const OfferContainer({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
           boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text),
                    Text(text2),
                    CommonButton(
                      color: primary,
                      widget: Text(
                        'Get Offer',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 80,
                    )
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
