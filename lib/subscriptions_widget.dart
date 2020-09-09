/*
*  subscriptions_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/subscriptions_pay_widget.dart';
import 'package:p4u/values.dart';


class SubscriptionsWidget extends StatelessWidget {
  
  void onPAYButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionsPayWidget()));
  
  void onBottomPaginationValueChanged(BuildContext context) {
  
  }
  
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
              height: 910,
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
                        Align(
                          alignment: Alignment.topRight,
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
                                  height: 25,
                                  margin: EdgeInsets.only(left: 30, top: 8, right: 47),
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
                                            fontFamily: "Roboto",
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
                                              fontFamily: "Roboto",
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
                                  height: 19,
                                  margin: EdgeInsets.only(left: 29, top: 3, right: 23),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 100,
                                          height: 19,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "INTRODUCTION",
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
                                      ),
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 122,
                                          height: 19,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "December 12, 2020",
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 330,
                            height: 102,
                            margin: EdgeInsets.only(top: 26),
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
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "credit card number",
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
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 59,
                                                height: 19,
                                                margin: EdgeInsets.only(right: 25),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "mm/yyyy",
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
                                          width: 101,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryElement,
                                            border: Border.fromBorderSide(Borders.secondaryBorder),
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 27,
                                                height: 19,
                                                margin: EdgeInsets.only(right: 34),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "CCV",
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 335,
                height: 193,
                margin: EdgeInsets.only(left: 19, top: 20),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 193,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(31, 0, 0, 0),
                              offset: Offset(0, 2),
                              blurRadius: 16,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/combined-shape-3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 43,
                      top: 91,
                      right: 36,
                      bottom: -1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 140,
                              height: 19,
                              margin: EdgeInsets.only(right: 55),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "INTRODUCTION PLAN",
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
                          ),
                          Container(
                            height: 22,
                            margin: EdgeInsets.only(top: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 45,
                                    height: 19,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "\$10.00",
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
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 51,
                                    height: 19,
                                    margin: EdgeInsets.only(top: 3),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "21 Days",
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
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 57,
                              height: 38,
                              margin: EdgeInsets.only(right: 111),
                              child: Container(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 124,
                      top: 3,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
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
                  onPressed: () => this.onPAYButtonPressed(context),
                  color: AppColors.secondaryElement,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}