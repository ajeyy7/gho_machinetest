import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/category_card.dart';
import 'package:gho_machinetest/view/components/doctor_card.dart';
import 'package:gho_machinetest/view/components/heading.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';
import 'package:gho_machinetest/view/components/offer_card.dart';
import 'package:gho_machinetest/view/components/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                radius: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Hi,Ajay'), Text('How are you today?')],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Column(
              children: [
                MyTextFiled(
                  visible: false,
                  hinttext: "Search for 'Doctor'",
                  prefixIcon: Icon(Icons.search),
                ),
                Header(
                  title: 'Our Services',
                  onSeeAllPressed: () {},
                  showSeeAll: false,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ServiceContainer(
                      text: 'Clinic appointment',
                      icon: Icons.add_ic_call_outlined,
                    ),
                  ),
                ),
                Header(title: 'Offers', onSeeAllPressed: () {}),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => OfferContainer(
                      text: 'Hello Doctor!',
                      text2: 'hggvsangfvjhvjvjfvjhsdjfvjhbdas',
                      image: '',
                    ),
                  ),
                ),
                Header(title: 'Categories', onSeeAllPressed: () {}),
                SizedBox(
                  height: 180,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) => CategoryContainer(
                          text: "text", icon: Icons.abc_outlined)),
                ),
                Header(title: 'Top Doctors', onSeeAllPressed: () {}),
                DoctorCard(
                    imageUrl: 'assets/images/logo.jpg',
                    name: 'Dr,Shammera',
                    specialization: 'Dermatologiest',
                    location: 'Iran',
                    rating: 4.8,
                    reviews: 19827,
                    price: '450'),
                DoctorCard(
                    imageUrl: 'assets/images/logo.jpg',
                    name: 'Dr,Shammera',
                    specialization: 'Dermatologiest',
                    location: 'Iran',
                    rating: 4.8,
                    reviews: 19827,
                    price: '450'),
                DoctorCard(
                    imageUrl: 'assets/images/logo.jpg',
                    name: 'Dr,Shammera',
                    specialization: 'Dermatologiest',
                    location: 'Iran',
                    rating: 4.8,
                    reviews: 19827,
                    price: '450'),
                DoctorCard(
                    imageUrl: 'assets/images/logo.jpg',
                    name: 'Dr,Shammera',
                    specialization: 'Dermatologiest',
                    location: 'Iran',
                    rating: 4.8,
                    reviews: 19827,
                    price: '450'),
                DoctorCard(
                    imageUrl: 'assets/images/logo.jpg',
                    name: 'Dr,Shammera',
                    specialization: 'Dermatologiest',
                    location: 'Iran',
                    rating: 4.8,
                    reviews: 19827,
                    price: '450'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
