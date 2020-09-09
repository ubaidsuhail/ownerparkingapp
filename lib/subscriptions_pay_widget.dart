/*
*  subscriptions_pay_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/subscriptions_thanks_widget.dart';
import 'package:p4u/values.dart';


class SubscriptionsPayWidget extends StatelessWidget {
  
  void onBookNowPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionsThanksWidget()));
  
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
              height: 1138,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 888,
                          child: Image.asset(
                            "assets/images/bg.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Opacity(
                            opacity: 0.42687,
                            child: Container(
                              width: 330,
                              height: 160,
                              margin: EdgeInsets.only(top: 43),
                              decoration: BoxDecoration(
                                color: AppColors.primaryBackground,
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 77,
                                    height: 92,
                                    margin: EdgeInsets.only(left: 28, top: 8),
                                    child: Image.asset(
                                      "assets/images/logo-3.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 56,
                                      margin: EdgeInsets.only(left: 24, top: 27, right: 52),
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 708,
                    right: 385,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Opacity(
                            opacity: 0.47124,
                            child: Container(
                              width: 334,
                              height: 74,
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
                            opacity: 0.46668,
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
                  Positioned(
                    top: 616,
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
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 300,
                            height: 468,
                            margin: EdgeInsets.only(top: 34),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  left: 0,
                                  top: -1,
                                  right: 0,
                                  bottom: 0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 29,
                                        right: 0,
                                        child: Container(
                                          height: 440,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 245, 245, 245),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(128, 0, 0, 0),
                                                offset: Offset(0, 12),
                                                blurRadius: 28,
                                              ),
                                            ],
                                            borderRadius: Radii.k5pxRadius,
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 1,
                                        top: 30,
                                        right: 1,
                                        bottom: 24,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              height: 108,
                                              decoration: BoxDecoration(
                                                gradient: Gradients.primaryGradient,
                                                borderRadius: Radii.k5pxRadius,
                                              ),
                                              child: Container(),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 228,
                                                height: 37,
                                                margin: EdgeInsets.only(top: 37),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryElement,
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromARGB(255, 204, 204, 204),
                                                  ),
                                                  borderRadius: Radii.k5pxRadius,
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 228,
                                                height: 73,
                                                margin: EdgeInsets.only(top: 18),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryBackground,
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromARGB(255, 204, 204, 204),
                                                  ),
                                                  borderRadius: Radii.k5pxRadius,
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 228,
                                                height: 37,
                                                margin: EdgeInsets.only(top: 18),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryElement,
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromARGB(255, 204, 204, 204),
                                                  ),
                                                  borderRadius: Radii.k5pxRadius,
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 226,
                                                height: 50,
                                                child: FlatButton(
                                                  onPressed: () => this.onBookNowPressed(context),
                                                  color: AppColors.secondaryElement,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: Radii.k5pxRadius,
                                                  ),
                                                  textColor: Color.fromARGB(255, 255, 255, 255),
                                                  padding: EdgeInsets.all(0),
                                                  child: Text(
                                                    "PAY \$10.00",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: AppColors.primaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 1,
                                        top: 137,
                                        right: 1,
                                        child: Container(
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 204, 204, 204),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 37,
                                        top: 0,
                                        right: 37,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                width: 66,
                                                height: 76,
                                                margin: EdgeInsets.only(left: 77),
                                                child: Image.asset(
                                                  "assets/images/logo-2.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                width: 182,
                                                height: 20,
                                                margin: EdgeInsets.only(left: 8, top: 107),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        width: 14,
                                                        height: 11,
                                                        margin: EdgeInsets.only(top: 5),
                                                        child: Image.asset(
                                                          "assets/images/imported-layers-2.png",
                                                          fit: BoxFit.none,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        width: 160,
                                                        height: 20,
                                                        margin: EdgeInsets.only(left: 8),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "Email",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 179, 179, 179),
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 15,
                                                          ),
                                                          maxLines: 1,
                                                          autocorrect: false,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                width: 187,
                                                height: 20,
                                                margin: EdgeInsets.only(left: 8, top: 35),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        width: 14,
                                                        height: 11,
                                                        margin: EdgeInsets.only(top: 5),
                                                        child: Image.asset(
                                                          "assets/images/group.png",
                                                          fit: BoxFit.none,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        width: 165,
                                                        height: 20,
                                                        margin: EdgeInsets.only(left: 8),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "Card number",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 179, 179, 179),
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 15,
                                                          ),
                                                          maxLines: 1,
                                                          autocorrect: false,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 226,
                                                height: 1,
                                                margin: EdgeInsets.only(top: 7),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(255, 192, 192, 192),
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              margin: EdgeInsets.only(left: 9, top: 8, right: 93),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      width: 12,
                                                      height: 12,
                                                      margin: EdgeInsets.only(top: 4),
                                                      child: Image.asset(
                                                        "assets/images/imported-layers-4.png",
                                                        fit: BoxFit.none,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      width: 59,
                                                      height: 20,
                                                      margin: EdgeInsets.only(left: 9),
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          hintText: "MM / YY",
                                                          contentPadding: EdgeInsets.all(0),
                                                          border: InputBorder.none,
                                                        ),
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 179, 179, 179),
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 15,
                                                        ),
                                                        maxLines: 1,
                                                        autocorrect: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      width: 11,
                                                      height: 12,
                                                      margin: EdgeInsets.only(top: 4),
                                                      child: Image.asset(
                                                        "assets/images/imported-layers.png",
                                                        fit: BoxFit.none,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                width: 120,
                                                height: 20,
                                                margin: EdgeInsets.only(left: 8, top: 35),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        width: 14,
                                                        height: 14,
                                                        margin: EdgeInsets.only(top: 3),
                                                        decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color.fromARGB(255, 230, 230, 230),
                                                              offset: Offset(0, 0),
                                                              blurRadius: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        child: Image.asset(
                                                          "assets/images/checkbox---unchecked.png",
                                                          fit: BoxFit.none,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                        margin: EdgeInsets.only(left: 7),
                                                        child: Text(
                                                          "Remember me",
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 102, 102, 102),
                                                            fontFamily: "Roboto",
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 15,
                                                            letterSpacing: 0,
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
                                      Positioned(
                                        left: 9,
                                        top: 38,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(255, 217, 217, 217),
                                                      offset: Offset(0, -1),
                                                      blurRadius: 1,
                                                    ),
                                                  ],
                                                ),
                                                child: Image.asset(
                                                  "assets/images/oval-6.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 85,
                                                height: 23,
                                                margin: EdgeInsets.only(top: 23),
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(255, 255, 255, 255),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 1,
                                                    ),
                                                  ],
                                                ),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "Parking 4U",
                                                    contentPadding: EdgeInsets.all(0),
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                    color: AppColors.secondaryText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 17,
                                                  ),
                                                  maxLines: 1,
                                                  autocorrect: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 72,
                                          height: 72,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(215, 179, 179, 179),
                                                offset: Offset(0, 0),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "assets/images/oval-2.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 1,
                                          height: 36,
                                          margin: EdgeInsets.only(top: 193),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 192, 192, 192),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  child: Container(
                                    width: 62,
                                    height: 62,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 46, 55, 108),
                                      borderRadius: BorderRadius.all(Radius.circular(31.17767)),
                                    ),
                                    child: Container(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 372,
                    top: 657,
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
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Opacity(
                opacity: 0.41118,
                child: Container(
                  width: 100,
                  height: 30,
                  margin: EdgeInsets.only(bottom: 55),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryElement,
                    boxShadow: [
                      Shadows.secondaryShadow,
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "PAY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
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
      ),
    );
  }
}