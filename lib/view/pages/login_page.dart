import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/fb_google_card.dart';
import 'package:gho_machinetest/view/components/logo_header.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';
import 'package:gho_machinetest/view/pages/regisiter_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Column(
                  children: [
                    MyTextFiled(name: 'Email', hinttext: 'Write your email'),
                    SizedBox(height: 16),
                    MyTextFiled(
                      name: 'Password',
                      hinttext: 'Write your Password',
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(color: primary),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    CommonButton(
                      color: primary,
                      widget: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 350,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.black),
                        ),
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
                        Text("You don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text('Sign Up'),
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
