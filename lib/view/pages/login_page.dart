import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';
import 'package:gho_machinetest/view/pages/regisiter_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.jpg',
                        height: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your Doctor',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
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
                    child: Text('Forgot your password?'),
                  ),
                ),
                SizedBox(height: 16),
               CommonButton(color: Colors.blue, widget: Text('Login')),
                SizedBox(height: 16),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Or continue with'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook, color: Colors.blue),
                      iconSize: 40,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.g_translate_rounded, color: Colors.red),
                      iconSize: 40,
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
        ),
      ),
    );
  }
}
