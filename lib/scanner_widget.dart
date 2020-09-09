/*
*  scanner_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/values.dart';


class ScannerWidget extends StatelessWidget {
  
  void onQRScannerWindowPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 74, 144, 226),
          ),
          child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: -250,
                        top: -450,
                        right: -250,
                        bottom: MediaQuery.of(context).size.height * 0.6,
                        child: Image.asset(
                          "assets/images/bg.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.15,
                          ),

                          Container(
                            width:MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              )
                            ),
                            child: Column(
                              children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "SCANNER",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 36, 99),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),

                              Text(
                                "Scan user details",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 36, 99),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),

                                Divider(
                                  thickness: 1.0,
                                  color:Color.fromARGB(255, 151, 151, 151),
                                ),

                                SizedBox(
                                  height: 15.0,
                                ),

                                Container(
                                  height: MediaQuery.of(context).size.height*0.42,
                                  width: MediaQuery.of(context).size.width*0.8,
                                  color: Color.fromARGB(255, 151, 151, 151),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),


        ));
  }
}