/*
*  edit_lot_spaces_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/edit_lot_attendants_widget.dart';
import 'package:p4u/edit_lot_details_tab_widget.dart';
import 'package:p4u/edit_lot_location_widget.dart';
import 'package:p4u/values.dart';


class EditLotSpacesWidget extends StatelessWidget {
  
  void onNextButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotLocationWidget()));
  
  void onAddAnotherPressed(BuildContext context) {
  
  }
  
  void onATTENDANTSPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotAttendantsWidget()));
  
  void onLOCATIONPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotLocationWidget()));
  
  void onDETAILSPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => EditLotDetailsTabWidget()));
  
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
              bottom: 78,
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
                          width: 55,
                          height: 20,
                          margin: EdgeInsets.only(left: 23, top: 1),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 0,
                                top: 17,
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
                                left: 1,
                                top: 0,
                                child: Text(
                                  "SPACES",
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 210,
                      height: 21,
                      margin: EdgeInsets.only(left: 29, top: 65),
                      child: Row(
                        children: [
                          Text(
                            "Zone Name",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 75),
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "# of Spaces",
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 299,
                      height: 24,
                      margin: EdgeInsets.only(left: 29, top: 9),
                      child: Row(
                        children: [
                          Container(
                            width: 94,
                            height: 21,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Handicapped",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 74, 75),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 18,
                            height: 21,
                            margin: EdgeInsets.only(right: 98),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "34",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 75, 74, 75),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 22,
                            margin: EdgeInsets.only(right: 4),
                            child: Image.asset(
                              "assets/images/trash-2.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 166,
                      height: 22,
                      margin: EdgeInsets.only(top: 111, right: 98),
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
                              "Add Another Zone",
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