/*
*  menu_owner_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/drop_down.dart';
import 'package:p4u/add_lot_details_tab_widget.dart';
import 'package:p4u/attendants_widget.dart';
import 'package:p4u/edit_lot_details_tab_widget.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/profile_attendant_widget.dart';
import 'package:p4u/reports_widget.dart';
import 'package:p4u/reviews_widget.dart';
import 'package:p4u/scanner_widget.dart';
import 'package:p4u/subscriptions_widget.dart';
import 'package:p4u/values.dart';
// import 'package:p4u/Bilalscode/add_lots/add_lot_details_tab_screen.dart';
import 'package:p4u/login_attendant_widget.dart';


class MenuUserWidget extends StatefulWidget {

  @override
  _MenuOwnerWidgetState createState() => _MenuOwnerWidgetState();
}

class _MenuOwnerWidgetState extends State<MenuUserWidget> {
//  void onLogoutPressed(BuildContext context) {
//
//  }
//
//  void onProfilePressed(BuildContext context) =>
//      Navigator.push(context,
//          MaterialPageRoute(builder: (context) => ProfileOwnerWidget()));
//
//  void onReportPressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => ReportsWidget()));
//
//  void onReviewsPressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => ReviewsWidget()));
//
//  void onSubscriptionPressed(BuildContext context) =>
//      Navigator.push(context,
//          MaterialPageRoute(builder: (context) => SubscriptionsWidget()));
//
//  void onScannerPressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => ScannerWidget()));
//
//  void onAttendantPressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => AttendantsWidget()));
//
//  void onEditLotPressed(BuildContext context) =>
//      Navigator.push(context,
//          MaterialPageRoute(builder: (context) => EditLotDetailsTabWidget()));
//
//  void onAddLotPressed(BuildContext context) =>
//      Navigator.push(context,
//          MaterialPageRoute(builder: (context) => AddLotDetailsTabWidget()));
//
//  void onHomePressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => HomeWidget()));

  String value = "1";

  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // actions: [
          //   PopupMenuButton(
          //     // key: _menuKey,
          //       itemBuilder: (_) => <PopupMenuItem<String>>[
          //         new PopupMenuItem<String>(
          //             child: const Text('Test1'), value: 'Test1'),
          //         new PopupMenuItem<String>(
          //             child: const Text('Test2'), value: 'Test2'),
          //       ],
          //       onSelected: (_) {})
          // ],
          elevation: 0,
        ),
        drawer: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
                bottomRight: Radius.circular(45)),
            child: Drawer(
              child: Container(
                color: Color.fromARGB(255, 19, 52, 91),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    DrawerHeader(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                width: 100.0,
                                height: 100.0,
                                // margin: EdgeInsets.only(left: 35),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    "assets/images/avatar.png",
                                    width: 30.0,
                                    height: 30.0,
                                    // fit: BoxFit.fill,
                                  ),
                                )
                            ),
                            Text(
                              "Jake Whiterspoon", style: TextStyle(color: Colors.white),),
                            Text("jake@gmail.com", style: TextStyle(
                                color: Colors.white, fontSize: 10.0),),

                          ],
                        )),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);

                          value = "1";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSearchWidget()));
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => LotDetailsWidget()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/combined-shape-11.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "HOME",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value = "2";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/barcode-1.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "SCANNER",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value = "3";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/review.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "REVIEWS",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: 10.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value = "4";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/user.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "PROFILE",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => LoginAttendantWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/log-out.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "LOGOUT",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,)
                  ],
                ),
              ),
            )),
        backgroundColor: Color.fromARGB(255, 74, 144, 226),
        body: ShowScreen()
    );
  }

  Widget ShowScreen() {
    if (value == "1") {
      return DropDownScreen();
    }

    else if (value == "2") {
      //return AddLotDetailsTabWidget();
      return ScannerWidget();
    }

    else if (value == "3") {
      return ReviewsWidget();
    }

    else if (value == "4") {
      return ProfileAttendantWidget();
    }

  }
}