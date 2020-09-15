/*
*  welcome_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/login_attendant_widget.dart';
import 'package:p4u/login_owner_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/staticfile.dart';

class WelcomeWidget extends StatelessWidget {
  
  void onAttendantPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAttendantWidget()));
  
  void onButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginOwnerWidget()));
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[

            Positioned(
              left: -250,
              top: -450,
              right: -250,
              bottom: MediaQuery.of(context).size.height * 0.6,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
//                      scale: 1,
              ),
            ),
            Column(
//
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                    padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*0.15),
                    child:Container(
                      //color: Colors.red,
                      child:Image.asset(
                        "assets/images/Icon1024.png",width: 140.0,height: 140.0,
                        fit: BoxFit.cover,
                      ),
                    )
                ),


//                Container(
//                  decoration: BoxDecoration(
//                    color: AppColors.primaryBackground,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Color.fromARGB(51, 0, 0, 0),
//                        offset: Offset(0, 20),
//                        blurRadius: 40,
//                      ),
//                    ],
//                    borderRadius: BorderRadius.all(Radius.circular(100)),
//                  ),
////                width: 90,
////                height: 116,
//                  child: Padding(
//                    padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical: 30.0),
//                    child: Image.asset(
//                      "assets/images/logo-4.png",
//                      fit: BoxFit.none,
//                    ),
//                  ),
//                ),

//              Spacer(),
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 58),
                    child: Text(
                      "PARKING 4 U",
            //          textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    child: Text(
                      "YOUR WHEELS BEST FRIEND",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],),



               Column(
                 children: <Widget>[
                   GestureDetector(
                     onTap: (){
                       StaticData.check = 1;
                       //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginWidget()));
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginOwnerWidget()));
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         color: AppColors.primaryBackground,
//                  boxShadow: [
//                    BoxShadow(
//                      color: Color.fromARGB(51, 0, 0, 0),
//                      offset: Offset(0, 20),
//                      blurRadius: 40,
//                    ),
//                  ],
                         borderRadius: BorderRadius.all(Radius.circular(5)),
                       ),
                       width: MediaQuery.of(context).size.width *0.9,
                       height: 50.0,

                       child: Center(child: Text(
                           "LOT OWNER LOGIN",style: TextStyle(
                         color: Color.fromARGB(255, 8, 57, 162),
                         fontFamily: "Roboto",
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                       ),
                       ),),
                     ),
                   ),

                   GestureDetector(
                     onTap: (){
                       StaticData.check = 2;
                       //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginWidget()));
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAttendantWidget()));
                     },
                     child: Container(
                       margin: EdgeInsets.only(top:20.0),
                       decoration: BoxDecoration(
                         color: AppColors.primaryBackground,
//                  boxShadow: [
//                    BoxShadow(
//                      color: Color.fromARGB(51, 0, 0, 0),
//                      offset: Offset(0, 20),
//                      blurRadius: 40,
//                    ),
//                  ],
                         borderRadius: BorderRadius.all(Radius.circular(5)),
                       ),
                       width: MediaQuery.of(context).size.width *0.9,
                       height: 50.0,

                       child: Center(child: Text(
                         "ATTENDANT LOGIN",style: TextStyle(
                         color: Color.fromARGB(255, 8, 57, 162),
                         fontFamily: "Roboto",
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                       ),
                       ),),
                     ),
                   ),

//                   SizedBox(height:20.0),






                 ],

               ),




              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.95,
              child:  Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  "© 2020 Parking-4u.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),

              ),
            ),

          ],),
      ),
    );
  }
}