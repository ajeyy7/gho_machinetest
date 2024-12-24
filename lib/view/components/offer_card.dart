import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';

class OfferContainer extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;

  final String offer;

  final String image;
  const OfferContainer({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
    required this.offer,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 330,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ], borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('Offer'),
                            Text(
                              "$offer%",
                              style: TextStyle(color: primary),
                            ),
                            Text(text2),
                          ],
                        ),
                        Text(text3),
                      ],
                    ),
                    CommonButton(
                      height: 40,
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
                      image: DecorationImage(image: AssetImage(image))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
