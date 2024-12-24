import 'package:flutter/material.dart';
import 'package:gho_machinetest/model/data.dart';
import 'package:gho_machinetest/view/components/category_card.dart';
import 'package:gho_machinetest/view/components/color.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile_pic.jpg'),
                            radius: 20,
                          ),
                          SizedBox(width: 9),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi,Mohammed',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'How are you today?',
                                style: TextStyle(color: primary),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.notifications_none_outlined),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                      image: 'assets/images/online-booking.png',
                    ),
                  ),
                ),
                Header(title: 'Offers', onSeeAllPressed: () {}),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => OfferContainer(
                      text: 'Hello Doctor!',
                      text2: 'off for your first ',
                      image: 'assets/images/offer_image.png',
                      offer: '50',
                      text3: 'video call with your doctor',
                    ),
                  ),
                ),
                Header(title: 'Categories', onSeeAllPressed: () {}),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories.map((item) {
                      return CategoryContainer(
                        text: item['name'] ?? '',
                        image: item['imagePath'] ?? '',
                      );
                    }).toList(),
                  ),
                ),
                Header(title: 'Top Doctors', onSeeAllPressed: () {}),
                Column(
                  children: doctorList.map((doctor) {
                    return DoctorCard(
                        imageUrl: doctor['imagePath'] ?? '',
                        name: doctor['name'] ?? '',
                        specialization: doctor['specialization'] ?? '',
                        location: doctor['location'] ?? '',
                        rating: doctor['rating'] ?? '',
                        reviews: doctor['review'] ?? '',
                        price: doctor['price'] ?? '');
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
