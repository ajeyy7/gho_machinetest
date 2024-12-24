import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/fb_google_card.dart';
import 'package:gho_machinetest/view/components/logo_header.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';
import 'package:gho_machinetest/view/pages/login_page.dart';
import 'package:gho_machinetest/view_model/register_vm.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final regsiterVm = Provider.of<RegisterViewModel>(context);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController mobileController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

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
                    MyTextFiled(
                      name: 'Email',
                      hinttext: 'Write your email',
                      controller: emailController,
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Code',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start,
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 50,
                                  child: DropdownButtonFormField(
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: '🇺🇸',
                                        hintStyle: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                      items: regsiterVm.countries
                                          .map((country) =>
                                              DropdownMenuItem<String>(
                                                value: country.code,
                                                child: Row(
                                                  children: [
                                                    Text(country.flag),
                                                    SizedBox(width: 8),
                                                    Text(country.country),
                                                  ],
                                                ),
                                              ))
                                          .toList(),
                                      onChanged: (value) {}),
                                ),
                              ],
                            )),
                        SizedBox(width: 8),
                        Flexible(
                          flex: 2,
                          child: MyTextFiled(
                              controller: mobileController,
                              name: 'Mobile phone',
                              hinttext: 'Write your phone'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    MyTextFiled(
                      obscureText: regsiterVm.visible,
                      controller: passwordController,
                      name: 'Password',
                      hinttext: 'Write your Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            regsiterVm.togglePass();
                          },
                          icon: Icon(regsiterVm.visible
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined)),
                    ),
                    SizedBox(height: 16),
                    CommonButton(
                      onTap: () async {
                        await regsiterVm.register(
                            emailController.text.trim(),
                            passwordController.text.trim(),
                            mobileController.text.trim());
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      color: primary,
                      widget: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 350,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Or continue with'),
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
