import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/bottom_bar.dart';
import 'package:gho_machinetest/view/pages/home_page.dart';
import 'package:gho_machinetest/view/pages/login_page.dart';
import 'package:gho_machinetest/view_model/bottom_barvm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider( providers: [
    ChangeNotifierProvider(create: (_)=>BottomBarvm())
  ],     child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: BottomBar());
  }
}
