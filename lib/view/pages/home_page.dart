import 'package:flutter/material.dart';
import 'package:gho_machinetest/view/components/common_button.dart';
import 'package:gho_machinetest/view/components/my_textfiled.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [CircleAvatar(), Icon(Icons.notification_add)],
              ),
              MyTextFiled(
                visible: false,
                hinttext: "Search for 'Doctor'",
                prefixIcon: Icon(Icons.search),
              ),
              Text('Our Services'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServiceContainer(
                      text: 'Clinic appointment',
                      icon: Icons.add_ic_call_outlined,
                    ),
                    ServiceContainer(
                      text: 'Online appointment',
                      icon: Icons.add_ic_call_outlined,
                    ),
                    ServiceContainer(
                      text: 'Clinic appointment',
                      icon: Icons.add_ic_call_outlined,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Offers'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OfferContainer(
                      text: 'Hello Doctor!',
                      text2: 'hggvsangfvjhvjvjfvjhsdjfvjhbdas',
                      image: '',
                    ),
                    OfferContainer(
                      text: 'Hello Doctor!',
                      text2: 'hggvsangfvjhvjvjfvjhsdjfvjhbdas',
                      image: '',
                    ),
                    OfferContainer(
                      text: 'Hello Doctor!',
                      text2: 'hggvsangfvjhvjvjfvjhsdjfvjhbdas',
                      image: '',
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                    ],
                  ),
                  Row(
                    children: [
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                      CategoryContainer(text: 'Cardiology', icon: Icons.abc),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Doctors'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
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
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String specialization;
  final String location;
  final double rating;
  final int reviews;
  final String price;
 

  const DoctorCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.specialization,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.price,
   
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    specialization,
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.amber),
                      SizedBox(width: 4),
                      Text(
                        '$rating',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '($reviews Reviews)',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'EGP $price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const CategoryContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Icon(icon), Text(text)],
        ),
      ),
    );
  }
}

class ServiceContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const ServiceContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(icon), Text(text)],
          ),
        ),
      ),
    );
  }
}

class OfferContainer extends StatelessWidget {
  final String text;
  final String text2;

  final String image;
  const OfferContainer({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text),
                    Text(text2),
                    CommonButton(
                      color: Colors.blue,
                      widget: Text(
                        'Get Offer',
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 80,
                    )
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
