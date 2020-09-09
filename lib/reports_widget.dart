/*
*  reports_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/report_results_widget.dart';
import 'package:p4u/values.dart';


class ReportsWidget extends StatelessWidget {
  
  void onReportsPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ReportResultsWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 1127,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 350,
                    top: 616,
                    right: 372,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 298,
                            height: 20,
                            child: Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 16,
                                  child: Image.asset(
                                    "assets/images/back-button.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 4,
                                  height: 20,
                                  child: Image.asset(
                                    "assets/images/menu-button.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 31, top: 18),
                            child: Text(
                              "REPORTS",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3125,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 195,
                            height: 30,
                            margin: EdgeInsets.only(top: 17),
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(21, 0, 0, 0),
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 133,
                                  height: 22,
                                  margin: EdgeInsets.only(left: 13),
                                  child: Opacity(
                                    opacity: 0.3,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Senayan City Mall",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 8,
                                  height: 14,
                                  margin: EdgeInsets.only(right: 16),
                                  child: Image.asset(
                                    "assets/images/group-4077-4.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          margin: EdgeInsets.only(left: 31, top: 31, right: 31),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 117,
                                  height: 32,
                                  margin: EdgeInsets.only(top: 1),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryElement,
                                    border: Border.fromBorderSide(Borders.secondaryBorder),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 75,
                                        height: 19,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Select Start",
                                            contentPadding: EdgeInsets.all(0),
                                            border: InputBorder.none,
                                          ),
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 74, 74, 74),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                          maxLines: 1,
                                          autocorrect: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 117,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryElement,
                                    border: Border.fromBorderSide(Borders.secondaryBorder),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 19,
                                        margin: EdgeInsets.symmetric(horizontal: 17),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Select Finish",
                                            contentPadding: EdgeInsets.all(0),
                                            border: InputBorder.none,
                                          ),
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 74, 74, 74),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                          maxLines: 1,
                                          autocorrect: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 261,
                          margin: EdgeInsets.only(top: 79),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 249),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 31),
                                      child: Text(
                                        "Done",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 122, 255),
                                          fontFamily: "Helvetica Neue",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 217,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 15,
                                      child: Container(
                                        height: 217,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryBackground,
                                        ),
                                        child: Container(),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      child: Image.asset(
                                        "assets/images/mask-3.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 67,
                                      right: 80,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Wed 9 Sep",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 51, 51, 51),
                                                fontFamily: "Helvetica",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 23,
                                                letterSpacing: -0.2,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(right: 32),
                                              child: Text(
                                                "10 ",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 51, 51, 51),
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 23,
                                                  letterSpacing: -0.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "00",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 51, 51, 51),
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 23,
                                                letterSpacing: -0.2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 30,
                margin: EdgeInsets.only(bottom: 55),
                child: FlatButton(
                  onPressed: () => this.onReportsPressed(context),
                  color: AppColors.secondaryElement,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "REPORTS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}