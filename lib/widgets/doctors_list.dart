import 'package:awesome_doctor_app_ui/constants.dart';
import 'package:awesome_doctor_app_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../Data/data.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getRelativeHeight(0.35),
      child: ListView.builder(
        itemCount: Data.doctorsList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          horizontal: getRelativeHeight(0.035),
        ),
        itemBuilder: (context, index) {
          final doctor = Data.doctorsList[index];
          final color = kCategoriesSecondaryColor[
              (kCategoriesSecondaryColor.length - index - 1)];
          final circleColor = kCategoriesPrimaryColor[
              (kCategoriesPrimaryColor.length - index - 1)];
          final cardWith = getRelativeWidth(0.48);
          return Row(
            children: [
              Container(
                width: cardWith,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                    ),
                                    color: color,
                                  ),
                                  height: getRelativeHeight(0.14),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: getRelativeHeight(0.13),
                                          height: getRelativeHeight(0.13),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 15,
                                              color: circleColor.withOpacity(0.6),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: getRelativeHeight(0.11),
                                          height: getRelativeHeight(0.11),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 15,
                                              color: circleColor.withOpacity(0.25),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
