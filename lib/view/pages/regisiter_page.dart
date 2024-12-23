import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.flag),
                              contentPadding: const EdgeInsets.all(16),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: '+91',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0.85,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            items: [],
                            onChanged: (value) {})),
                    SizedBox(width: 8),
                    Flexible(
                      flex: 2,
                      child: MyTextFiled(
                          name: 'Mobile phone', hinttext: 'Write your phone'),
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
                CommonButton(color: Colors.blue, widget: Text('Register'),width: 350,),
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
        ),
      ),
    );
  }
}
