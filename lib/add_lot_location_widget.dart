/*
*  add_lot_location_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:p4u/add_lot_attendants_widget.dart';
import 'package:p4u/add_lot_details_tab_widget.dart';
import 'package:p4u/add_lot_spaces_widget.dart';
import 'package:p4u/values.dart';


class AddLotLocationWidget extends StatelessWidget {
  
  void onNextButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotAttendantsWidget()));
  
  void onATTENDANTSPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotAttendantsWidget()));
  
  void onSPACESPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotSpacesWidget()));
  
  void onDETAILSPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotDetailsTabWidget()));
  
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
              left: 1,
              top: 39,
              right: -1,
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
                      margin: EdgeInsets.only(left: 38, top: 21),
                      child: Text(
                        "ADD YOUR PARKING AREA",
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
                  Spacer(),
                  Container(
                    height: 790,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 121,
              right: -1,
              bottom: -208,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 28,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 3,
                              child: Image.asset(
                                "assets/images/line-2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 55,
                          height: 19,
                          child: FlatButton(
                            onPressed: () => this.onDETAILSPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                            ),
                            textColor: Color.fromARGB(255, 156, 155, 156),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "DETAILS",
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
                          width: 52,
                          height: 19,
                          margin: EdgeInsets.only(left: 24, top: 1),
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
                          height: 20,
                          margin: EdgeInsets.only(top: 1, right: 16),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 17,
                                right: 7,
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
                                top: 0,
                                right: 0,
                                child: Text(
                                  "LOCATION",
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 328,
                      height: 446,
                      margin: EdgeInsets.only(top: 7),
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
                                  width: 280,
                                  height: 19,
                                  margin: EdgeInsets.only(left: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Lot Address",
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 168,
                                  height: 19,
                                  margin: EdgeInsets.only(left: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "City",
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
                              children: [
                                Container(
                                  width: 33,
                                  height: 19,
                                  margin: EdgeInsets.only(left: 16),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "State",
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
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 19,
                                  margin: EdgeInsets.only(right: 99),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Zipcode",
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
                          Spacer(),
                          Container(
                            height: 218,
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
                                  child: Container(
                                    margin: EdgeInsets.only(left: 16, top: 22),
                                    child: Text(
                                      "Select your location by moving the pointer",
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
                                Container(
                                  height: 167,
                                  margin: EdgeInsets.only(left: 1, top: 9, right: 2),
                                  child: GoogleMap(
                                    onMapCreated: (controller) {
                                    
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 300,
                      height: 173,
                      margin: EdgeInsets.only(right: 31, bottom: 31),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 230, 233, 238),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 32,
                            height: 40,
                            margin: EdgeInsets.only(left: 126, top: 36),
                            child: Image.asset(
                              "assets/images/file-icon.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 63, top: 10),
                            child: Text(
                              "Upload Lot image",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 179, 179, 179),
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 100,
                      height: 30,
                      margin: EdgeInsets.only(right: 127),
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