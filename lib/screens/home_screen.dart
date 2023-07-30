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
              SizedBox(height: getRelativeHeight(0.025)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getRelativeWidth(0.04)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Hosain",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: getRelativeWidth(0.09),
                          ),
                        ),
                        SizedBox(height: getRelativeHeight(0.003)),
                        Text(
                          "Find a Doctor & Specialist Easily",
                          style: TextStyle(
                            color: Colors.blueGrey[400],
                            fontSize: getRelativeWidth(0.036),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: getRelativeHeight(0.06),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 4),
                            color: Colors.black54,
                          ),
                        ],
                        color: Color(0xFFA295FD),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/images/person.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getRelativeHeight(0.015)),
              Stack(
                children: [
                  Container(
                    width: getRelativeWidth(0.94),
                    height: getRelativeHeight(0.22),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: getRelativeHeight(0.88),
                          height: getRelativeHeight(0.17),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 15),
                                color: kPrimaryDarkColor,
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF77E2FE),
                                Color(0xFF46BDFA),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getRelativeWidth(0.03),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
