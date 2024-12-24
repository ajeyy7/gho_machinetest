import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/color.dart';
import 'package:gho_machinetest/view/pages/home_page.dart';
import 'package:gho_machinetest/view/pages/other_pages.dart';
import 'package:gho_machinetest/view_model/bottom_barvm.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      OtherPages(),
      OtherPages(),
      OtherPages(),
      OtherPages()
    ];
    final bottomVm = Provider.of<BottomBarvm>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primary,
          currentIndex: bottomVm.currentIndex,
          onTap: (index) {
            bottomVm.navigate(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_online), label: 'booking'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
      body: pages[bottomVm.currentIndex],
    );
  }
}
