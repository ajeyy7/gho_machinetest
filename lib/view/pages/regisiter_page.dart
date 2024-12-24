import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/fb_google_card.dart';
import 'package:gho_machinetest/view/components/logo_header.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LogoHeader(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    MyTextFiled(name: 'Email', hinttext: 'Write your email'),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(''),
                                DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.flag),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '+91',
                                      hintStyle: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          width: 0.85,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    items: [],
                                    onChanged: (value) {}),
                              ],
                            )),
                        SizedBox(width: 8),
                        Flexible(
                          flex: 2,
                          child: MyTextFiled(
                              name: 'Mobile phone',
                              hinttext: 'Write your phone'),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    MyTextFiled(
                      name: 'Password',
                      hinttext: 'Write your Password',
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    SizedBox(height: 16),
                    CommonButton(
                      color: primary,
                      widget: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 350,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Or continue with'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Flexible(
                          child: FbGoogleCard(
                            assetName: 'assets/images/fb.svg',
                            text: 'Facebook',
                          ),
                        ),
                        Flexible(
                          child: FbGoogleCard(
                            assetName: 'assets/images/google.svg',
                            text: 'Google',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You have an account already? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Sign In'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
