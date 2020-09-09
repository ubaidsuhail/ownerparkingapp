/*
*  edit_lot_details_tab_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/edit_lot_attendants_widget.dart';
import 'package:p4u/edit_lot_location_widget.dart';
import 'package:p4u/edit_lot_spaces_widget.dart';
import 'package:p4u/values.dart';


class EditLotDetailsTabWidget extends StatelessWidget {
  
  void onNextButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotSpacesWidget()));
  
  void onFormsSwitchesSuccessTwoValueChanged(BuildContext context) {
  
  }
  
  void onFormsSwitchesSuccessValueChanged(BuildContext context) {
  
  }
  
  void onATTENDANTSPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotAttendantsWidget()));
  
  void onSPACESPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotSpacesWidget()));
  
  void onLOCATIONPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotLocationWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -342,
              top: -577,
              right: -365,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 39,
              right: 0,
              bottom: -233,
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
                      margin: EdgeInsets.only(left: 39, top: 21),
                      child: Text(
                        "EDIT YOUR PARKING AREA",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 195,
                      height: 30,
                      margin: EdgeInsets.only(top: 21),
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
                            width: 134,
                            height: 20,
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
                                  fontFamily: "Rubik",
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
                            width: 7,
                            height: 11,
                            margin: EdgeInsets.only(right: 15),
                            child: Image.asset(
                              "assets/images/affordance.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 716,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -1,
              top: 199,
              right: 0,
              bottom: -200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 151, 151, 151),
                              ),
                              child: Container(),
                            ),
                          ),
                        ),
                        Container(
                          width: 56,
                          height: 21,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 1,
                                top: 18,
                                child: Container(
                                  width: 55,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 74, 144, 226),
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  "DETAILS",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 74, 144, 226),
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 52,
                          height: 19,
                          margin: EdgeInsets.only(left: 23, top: 1),
                          child: FlatButton(
                            onPressed: () => this.onSPACESPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                            ),
                            textColor: Color.fromARGB(255, 156, 155, 156),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "SPACES",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 155, 156),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 67,
                          height: 19,
                          margin: EdgeInsets.only(top: 1, right: 16),
                          child: FlatButton(
                            onPressed: () => this.onLOCATIONPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                            ),
                            textColor: Color.fromARGB(255, 156, 155, 156),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "LOCATION",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 155, 156),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 89,
                          height: 19,
                          margin: EdgeInsets.only(top: 1, right: 23),
                          child: FlatButton(
                            onPressed: () => this.onATTENDANTSPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                            ),
                            textColor: Color.fromARGB(255, 156, 155, 156),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "ATTENDANTS",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 155, 156),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 328,
                      height: 588,
                      margin: EdgeInsets.only(bottom: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 136,
                                  height: 19,
                                  margin: EdgeInsets.only(left: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Name your parking lot",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 117, 123, 126),
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
                          Container(
                            height: 108,
                            margin: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                    opacity: 0.27128,
                                    child: Text(
                                      "",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12, top: 8, right: 131),
                                  child: Text(
                                    "Description of your parking lot",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.accentText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      letterSpacing: -0.175,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 64,
                                  height: 19,
                                  margin: EdgeInsets.only(left: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Telephone",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 117, 123, 126),
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
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 16, right: 145),
                                      child: Text(
                                        "Open 24 Hours ?",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.accentText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          letterSpacing: -0.175,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 52,
                                  height: 32,
                                  margin: EdgeInsets.only(top: 11, right: 13),
                                  child: Switch.adaptive(
                                    value: true,
                                    inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                                    onChanged: (value) {
                                    
                                    },
                                    activeColor: Color.fromARGB(255, 184, 184, 184),
                                    activeTrackColor: Color.fromARGB(255, 0, 128, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 100, top: 4, right: 100),
                                  child: Text(
                                    "OPERATING HOURS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.accentText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 21,
                                  margin: EdgeInsets.only(left: 35, top: 6, right: 26),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 72,
                                          height: 20,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromARGB(255, 186, 186, 186),
                                                  ),
                                                ),
                                                child: TextField(
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                  ),
                                                  maxLines: 1,
                                                  autocorrect: false,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                margin: EdgeInsets.only(right: 7),
                                                child: Text(
                                                  "AM ",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
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
                                          width: 72,
                                          height: 20,
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromARGB(255, 186, 186, 186),
                                                  ),
                                                ),
                                                child: TextField(
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                  ),
                                                  maxLines: 1,
                                                  autocorrect: false,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                margin: EdgeInsets.only(right: 7),
                                                child: Text(
                                                  "PM ",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
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
                          Spacer(),
                          Container(
                            height: 84,
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 111, top: 4, right: 111),
                                  child: Text(
                                    "PARKING RATES",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.accentText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 19,
                                  margin: EdgeInsets.only(left: 35, top: 4, right: 45),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 96,
                                          height: 19,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                child: Image.asset(
                                                  "assets/images/checkbox-2.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 9),
                                                child: Text(
                                                  "Hourly",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.175,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 12,
                                                height: 19,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "\$ ",
                                                    contentPadding: EdgeInsets.all(0),
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 117, 123, 126),
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
                                          width: 96,
                                          height: 19,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                left: -1,
                                                right: 0,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Container(
                                                        width: 17,
                                                        height: 17,
                                                        child: Image.asset(
                                                          "assets/images/checkbox.png",
                                                          fit: BoxFit.none,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Container(
                                                        width: 12,
                                                        height: 19,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "\$ ",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 117, 123, 126),
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
                                              Positioned(
                                                child: Text(
                                                  "Weekly",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.175,
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
                                Spacer(),
                                Container(
                                  height: 19,
                                  margin: EdgeInsets.only(left: 35, right: 45, bottom: 11),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: 96,
                                          height: 19,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                child: Image.asset(
                                                  "assets/images/checkbox-2.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 9),
                                                child: Text(
                                                  "Daily",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.175,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 12,
                                                height: 19,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "\$ ",
                                                    contentPadding: EdgeInsets.all(0),
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 117, 123, 126),
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
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: 96,
                                          height: 19,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 17,
                                                height: 17,
                                                child: Image.asset(
                                                  "assets/images/checkbox.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                margin: EdgeInsets.only(right: 8),
                                                child: Text(
                                                  "Monthly",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.accentText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.175,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 12,
                                                height: 19,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "\$ ",
                                                    contentPadding: EdgeInsets.all(0),
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 117, 123, 126),
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
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius: Radii.k5pxRadius,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 16, right: 89),
                                      child: Text(
                                        "Accept Cash at the Gate ?",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.accentText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          letterSpacing: -0.175,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 52,
                                  height: 32,
                                  margin: EdgeInsets.only(top: 11, right: 13),
                                  child: Switch.adaptive(
                                    value: true,
                                    inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                                    onChanged: (value) {
                                    
                                    },
                                    activeColor: Color.fromARGB(255, 184, 184, 184),
                                    activeTrackColor: Color.fromARGB(255, 0, 128, 255),
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
                      width: 100,
                      height: 30,
                      child: FlatButton(
                        onPressed: () => this.onNextButtonPressed(context),
                        color: AppColors.secondaryElement,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "NEXT",
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
          ],
        ),
      ),
    );
  }
}