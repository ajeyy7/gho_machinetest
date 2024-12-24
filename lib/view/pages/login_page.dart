import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/bottom_bar.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/fb_google_card.dart';
import 'package:gho_machinetest/view/components/logo_header.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';
import 'package:gho_machinetest/view/pages/regisiter_page.dart';
import 'package:gho_machinetest/view_model/login_vm.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginVm = Provider.of<LoginViewModel>(context);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

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
                    MyTextFiled(
                      name: 'Email',
                      hinttext: 'Write your email',
                      controller: emailController,
                    ),
                    SizedBox(height: 16),
                    MyTextFiled(
                      obscureText: loginVm.visible,
                      name: 'Password',
                      hinttext: 'Write your Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            loginVm.togglePass();
                          },
                          icon: Icon(loginVm.visible
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined)),
                      controller: passwordController,
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
                      onTap: () async {
                        bool success = await loginVm.login(
                            emailController.text.trim(),
                            passwordController.text.trim());
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(success
                                ? 'Login Success!'
                                : 'Login Failed: Invalid credentials'),
                            backgroundColor:
                                success ? Colors.green : Colors.red,
                          ),
                        );

                        if (success) {
                          await Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomBar()),
                          );
                        }
                      },
                      color: primary,
                      widget: loginVm.isLoading
                          ? CircularProgressIndicator()
                          : Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                      width: 350,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 10),
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
