import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final String? name;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool visible;

  final String hinttext;

  final TextEditingController? controller;
  const MyTextFiled(
      {super.key,
       this.name,
      this.controller,
      this.visible = true,
      required this.hinttext,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: visible,
            child: Text(
              name??'',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                contentPadding: const EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.white,
                hintText: hinttext,
                hintStyle:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0.85,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
