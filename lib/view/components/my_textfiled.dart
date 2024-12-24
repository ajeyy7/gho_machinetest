import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final String? name;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool visible;
  final bool? obscureText;

  final String hinttext;

  final TextEditingController? controller;
  const MyTextFiled(
      {super.key,
      this.name,
      this.controller,
      this.visible = true,
      required this.hinttext,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: visible,
          child: Text(
            name ?? '',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 50,
          child: TextFormField(
            obscureText: obscureText ?? false,
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              filled: true,
              fillColor: Colors.white,
              hintText: hinttext,
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Colors.grey[400]),
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
    );
  }
}
