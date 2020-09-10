/*
*  menu_owner_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/Bilalscode/edit_lots/edit_lot_details_tab_widget.dart';
import 'package:p4u/Bilalscode/subscription_screen/subscriptions_widget.dart';
import 'package:p4u/add_lot_details_tab_widget.dart';
import 'package:p4u/attendants_widget.dart';
import 'package:p4u/edit_lot_details_tab_widget.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/profile_owner_widget.dart';
import 'package:p4u/report_results_widget.dart';
import 'package:p4u/reviews_widget.dart';
import 'package:p4u/scanner_widget.dart';
import 'package:p4u/subscriptions_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/Bilalscode/add_lots/add_lot_details_tab_screen.dart';


class MenuOwnerWidget extends StatefulWidget {

  @override
  _MenuOwnerWidgetState createState() => _MenuOwnerWidgetState();
}

class _MenuOwnerWidgetState extends State<MenuOwnerWidget> {
  void onLogoutPressed(BuildContext context) {

  }

  void onProfilePressed(BuildContext context) =>
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProfileOwnerWidget()));

//  void onReportPressed(BuildContext context) =>
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => ReportsWidget()));

  void onReviewsPressed(BuildContext context) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ReviewsWidget()));

  void onSubscriptionPressed(BuildContext context) =>
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SubscriptionsWidget()));

  void onScannerPressed(BuildContext context) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScannerWidget()));

  void onAttendantPressed(BuildContext context) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AttendantsWidget()));

  void onEditLotPressed(BuildContext context) =>
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => EditLotDetailsTabWidget()));

  void onAddLotPressed(BuildContext context) =>
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AddLotDetailsTabWidget()));

  void onHomePressed(BuildContext context) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeWidget()));

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
                child: ListView(
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
                                    "assets/images/img.png",
                                    width: 30.0,
                                    height: 30.0,
                                    // fit: BoxFit.fill,
                                  ),
                                )
                            ),
                            Text(
                              "LAURA", style: TextStyle(color: Colors.white),),
                            Text("laura@test.com", style: TextStyle(
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
                    // SizedBox(height: 10.0,),
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

                          //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/plus-square.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ADD YOUR LOT",
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

                          value = "3";
                          setState(() {
                            ShowScreen();
                          });

                          //Navigator.push(context, MaterialPageRoute(builder: (context) => MyVehiclesWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/edit.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "EDIT LOT",
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

                          //Navigator.push(context, MaterialPageRoute(builder: (context) => MYBookingsWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/combined-shape-2.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ATTENDANTS",
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
                          value = "5";
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
                    // SizedBox(height: 5.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value = "6";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/subscription.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "SUBSCRIPTION",
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
                    // SizedBox(height: 5.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                          value = "7";
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
                          value = "8";
                          setState(() {
                            ShowScreen();
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/newspaper.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "REPORT",
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
                          value = "9";
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
                          Navigator.pop(context);
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
      return HomeWidget();
    }

    else if (value == "2") {
      //return AddLotDetailsTabWidget();
      return OnTapScreen();
    }

    else if (value == "3") {
      return EditLotDetailsTabScreen();
    }

    else if (value == "4") {
      return AttendantsWidget();
    }

    else if (value == "5") {
      return ScannerWidget();
    }

    else if (value == "6") {
      return SubscriptionScreen();
    }
    else if (value == "7") {
      return ReviewsWidget();
    }
    else if (value == "8") {
      //return ReportsWidget();
      return ReportResultsWidget();
    }
    else if (value == "9") {
      return ProfileOwnerWidget();
    }
  }
}