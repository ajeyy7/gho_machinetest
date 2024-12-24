import 'package:flutter/material.dart';
import 'package:gho_machinetest/helper/db.dart';
import 'package:gho_machinetest/view/components/bottom_bar.dart';
import 'package:gho_machinetest/view/pages/login_page.dart';
import 'package:gho_machinetest/view_model/bottom_barvm.dart';
import 'package:gho_machinetest/view_model/login_vm.dart';
import 'package:gho_machinetest/view_model/register_vm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => BottomBarvm()),
    ChangeNotifierProvider(create: (_) => RegisterViewModel()),
    ChangeNotifierProvider(create: (_) => LoginViewModel()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        fontFamily: 'Poppins',
      ),
      home: FutureBuilder<bool>(
        future: _checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data == true) {
            return const BottomBar();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}

Future<bool> _checkLoginStatus() async {
  final userData = await SharedPreferencesHelper.getUserData();

  if (userData['email'] != null && userData['password'] != null) {
    return true;
  }
  return false;
}
