/*
*  subscriptions_thanks_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/subscriptions_widget.dart';
import 'package:p4u/values.dart';


class SubscriptionsThanksWidget extends StatelessWidget {
  
  void onOKButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionsWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Positioned(
              left: -342,
              top: -577,
              right: -365,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 901,
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
                          left: 363,
                          top: 616,
                          right: 385,
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
                                  margin: EdgeInsets.only(left: 9, top: 21),
                                  child: Opacity(
                                    opacity: 0.52562,
                                    child: Text(
                                      "SUBSCRIPTIONS",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        height: 1.05,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Opacity(
                                  opacity: 0.48059,
                                  child: Container(
                                    width: 334,
                                    height: 74,
                                    margin: EdgeInsets.only(top: 24),
                                    decoration: BoxDecoration(
                                      color: AppColors.ternaryBackground,
                                      borderRadius: BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 23,
                                          margin: EdgeInsets.only(left: 30, top: 10, right: 39),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Active Plan",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 10, 36, 99),
                                                    fontFamily: "Rubik",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  margin: EdgeInsets.only(top: 1),
                                                  child: Text(
                                                    "Expiration",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Color.fromARGB(255, 10, 36, 99),
                                                      fontFamily: "Rubik",
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 17,
                                          margin: EdgeInsets.only(left: 25, top: 4, right: 23),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "INTRODUCTION",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 74, 74, 74),
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "December 12, 2020",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 74, 74, 74),
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Opacity(
                                  opacity: 0.57301,
                                  child: Container(
                                    width: 330,
                                    height: 102,
                                    margin: EdgeInsets.only(top: 17),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryBackground,
                                      borderRadius: BorderRadius.all(Radius.circular(18)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 32,
                                          margin: EdgeInsets.only(left: 15, top: 18, right: 18),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryElement,
                                            border: Border.fromBorderSide(Borders.secondaryBorder),
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 7),
                                                child: Text(
                                                  "credit card number",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 74, 74, 74),
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 32,
                                          margin: EdgeInsets.only(left: 15, top: 8, right: 19),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 116,
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
                                                        margin: EdgeInsets.only(left: 33, right: 26),
                                                        child: Text(
                                                          "mm/yyyy",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 74, 74, 74),
                                                            fontFamily: "Lato",
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 14,
                                                          ),
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
                                                  width: 101,
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
                                                        margin: EdgeInsets.only(left: 39, right: 33),
                                                        child: Text(
                                                          "CCV",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 74, 74, 74),
                                                            fontFamily: "Lato",
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 330,
                      height: 160,
                      margin: EdgeInsets.only(top: 30),
                      child: Opacity(
                        opacity: 0.4987,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              bottom: 25,
                              child: Image.asset(
                                "assets/images/bottompagination-3.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryBackground,
                                  borderRadius: BorderRadius.all(Radius.circular(22)),
                                ),
                                child: Container(),
                              ),
                            ),
                            Positioned(
                              left: 28,
                              top: 8,
                              right: 52,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 77,
                                      height: 92,
                                      child: Image.asset(
                                        "assets/images/logo-3.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: 56,
                                        margin: EdgeInsets.only(left: 24, top: 19),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                margin: EdgeInsets.only(right: 1),
                                                child: Text(
                                                  "INTRODUCTION PLAN",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 74, 74, 74),
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 17,
                                              margin: EdgeInsets.only(top: 22),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      "\$10.00",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 74, 74, 74),
                                                        fontFamily: "Lato",
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      "21 Days",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 74, 74, 74),
                                                        fontFamily: "Lato",
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 60,
              child: Container(
                width: 250,
                height: 149,
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 81, top: 18, right: 80),
                      child: Text(
                        "THANK YOU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 32, top: 8, right: 31),
                      child: Text(
                        "Your INTRODUCTION plan\nis now active. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 60,
                        height: 25,
                        margin: EdgeInsets.only(bottom: 15),
                        child: FlatButton(
                          onPressed: () => this.onOKButtonPressed(context),
                          color: AppColors.primaryElement,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "OK",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}