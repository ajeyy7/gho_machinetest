import 'package:flutter/material.dart';
import 'package:gho_machinetest/helper/db.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/pages/login_page.dart';

class OtherPages extends StatelessWidget {
  const OtherPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.watch_later_outlined),
                  Text(
                    'Under Progress',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CommonButton(
                      onTap: () async {
                        await SharedPreferencesHelper.clearUserData();
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      color: Colors.red,
                      widget: Text(
                        'Logout',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 300)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
