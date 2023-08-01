import 'package:awesome_doctor_app_ui/constants.dart';
import 'package:awesome_doctor_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

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
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 1,
                                        right: 2,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.black54,
                                          size: getRelativeHeight(0.1),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: getRelativeHeight(0.1),
                                      ),
                                      Icon(
                                        Icons.healing,
                                        color: Colors.white,
                                        size: getRelativeHeight(0.05),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: getRelativeWidth(0.012)),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Check Up COVID-19",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: getRelativeWidth(0.055),
                                          ),
                                        ),
                                        SizedBox(
                                            height: getRelativeHeight(0.02)),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "Contains several list of questions to check",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.85),
                                                    fontSize: getRelativeWidth(
                                                        0.033)),
                                              ),
                                            ),
                                            SizedBox(
                                                height: getRelativeWidth(0.03)),
                                            Container(
                                              padding: EdgeInsets.all(
                                                  getRelativeWidth(0.012)),
                                              decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                                size: getRelativeWidth(0.038),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getRelativeWidth(0.12),
                        width: getRelativeWidth(0.12),
                        child: Image.asset("assets/images/virus.png"),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getRelativeHeight(0.035),
                          horizontal: getRelativeWidth(0.16),
                        ),
                        child: Container(
                          height: getRelativeWidth(0.06),
                          width: getRelativeWidth(0.06),
                          child: Image.asset("assets/images/virus.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getRelativeHeight(0.01),
                          horizontal: getRelativeWidth(0.07),
                        ),
                        child: Container(
                          height: getRelativeWidth(0.08),
                          width: getRelativeWidth(0.08),
                          child: Image.asset("assets/images/virus.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getRelativeHeight(0.005)),
              Container(
                width: getRelativeWidth(0.88),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: getRelativeHeight(0.02),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Search Doctor",
                      hintStyle: TextStyle(
                        fontSize: getRelativeWidth(0.046),
                        color: Colors.blueGrey.withOpacity(0.9),
                      ),
                      prefixIcon: Icon(
                        LineIcons.search,
                        color: Colors.blueGrey.withOpacity(0.9),
                        size: getRelativeWidth(0.065),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getRelativeWidth(0.03),
                        ),
                        child: Container(
                          width: getRelativeWidth(0.26),
                          height: getRelativeHeight(0.01),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFBA473),
                                Color(0xFFFA7A30),
                              ]
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
