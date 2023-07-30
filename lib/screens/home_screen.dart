import 'package:awesome_doctor_app_ui/constants.dart';
import 'package:awesome_doctor_app_ui/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getRelativeHeight(0.25)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getRelativeWidth(0.04),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
