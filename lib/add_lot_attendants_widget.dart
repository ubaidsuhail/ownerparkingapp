/*
*  add_lot_attendants_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/add_add_attendant_widget.dart';
import 'package:p4u/add_lot_details_tab_widget.dart';
import 'package:p4u/add_lot_location_widget.dart';
import 'package:p4u/add_lot_spaces_widget.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/values.dart';


class AddLotAttendantsWidget extends StatelessWidget {
  
  void onSaveButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
  void onAddAnotherPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddAttendantWidget()));
  
  void onSPACESPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotSpacesWidget()));
  
  void onLOCATIONPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddLotLocationWidget()));
  
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
                  Container(
                    height: 559,
                    margin: EdgeInsets.only(top: 9),
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
              bottom: 62,
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
                          height: 20,
                          margin: EdgeInsets.only(top: 1, right: 23),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 17,
                                right: 22,
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
                                  "ATTENDANTS",
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, top: 14, right: 61),
                    child: Text(
                      "\nASSIGN ATTENDANTS TO THIS LOT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        height: 1.25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 120,
                      height: 89,
                      margin: EdgeInsets.only(left: 35, top: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 61,
                              height: 61,
                              child: Image.asset(
                                "assets/images/avatar-3.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 18,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Jake Witherspoon",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              maxLines: 1,
                              autocorrect: false,
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
                      height: 52,
                      margin: EdgeInsets.only(top: 39),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Your Attendant List",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 74, 74, 74),
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            margin: EdgeInsets.only(top: 3),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                      border: Border.all(
                                        width: 1,
                                        color: Color.fromARGB(255, 230, 233, 238),
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 7,
                                  right: 10,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 73,
                                          height: 17,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Option One",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 74, 74, 74),
                                              fontFamily: "Lato",
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
                                          width: 7,
                                          height: 11,
                                          margin: EdgeInsets.only(top: 3),
                                          child: Image.asset(
                                            "assets/images/affordance.png",
                                            fit: BoxFit.none,
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
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 165,
                      height: 22,
                      margin: EdgeInsets.only(top: 54),
                      child: FlatButton(
                        onPressed: () => this.onAddAnotherPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 75, 74, 75),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/plusbutton.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Add an Attendant",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 74, 75),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 100,
                      height: 30,
                      margin: EdgeInsets.only(right: 131),
                      child: FlatButton(
                        onPressed: () => this.onSaveButtonPressed(context),
                        color: Color.fromARGB(255, 209, 2, 28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "SAVE",
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