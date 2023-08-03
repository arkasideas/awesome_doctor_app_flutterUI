import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../Model/category.dart';
import '../Model/doctor.dart';

class Data {
  static final categoriesList = [
    Category(
      title: "Cardiology",
      doctorsNumber: 15,
      icon: Icons.favorite,
    ),
    Category(
      title: "Pediateric",
      doctorsNumber: 8,
      icon: LineIcons.child,
    ),
    Category(
      title: "Dermatology",
      doctorsNumber: 7,
      icon: Icons.line_style,
    ),
    Category(
      title: "Optic",
      doctorsNumber: 10,
      icon: LineIcons.eye,
    ),
  ];

  static final doctorsList = [
    Doctor(
      name: "Dr. Hegazy Ali",
      speciality: "Cardiology",
      image: "assets/images/doctor_1.png",
      reviews: 80,
      reviewsScore: 4,
    ),
    Doctor(
      name: "Dr. Dani",
      speciality: "Dermatology",
      image: "assets/images/doctor_2.png",
      reviews: 67,
      reviewsScore: 5,
    ),
    Doctor(
      name: "Dr. George",
      speciality: "Ophthalmology",
      image: "assets/images/doctor_3.png",
      reviews: 19,
      reviewsScore: 3,
    ),
  ];
}
