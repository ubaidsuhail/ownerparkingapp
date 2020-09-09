/*
*  profile_attendant_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/values.dart';


class ProfileAttendantWidget extends StatelessWidget {
  
  void onChangePasswordButtonPressed(BuildContext context) {
  
  }
  
  void onUpdateButtonPressed(BuildContext context) {
  
  }
  
  void onEditIconPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {

    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child:SingleChildScrollView(
            child:Stack(
                alignment: Alignment.center,
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
                      SizedBox(height: MediaQuery.of(context).size.height*0.10),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width:100.0,
                            height: 100.0,
                            // margin: EdgeInsets.only(left: 35),
                            child: Image.asset(
                              "assets/images/avatar.png",
                              fit: BoxFit.fill,width: 100.0,height:100.0,
                            ),
                          ),
                          Positioned(
                            top: 70.0,
                            child: Container(
                              // alignment: Alignment.bottomCenter,
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                              child: Image(image: AssetImage('assets/images/edit-icon.png'),),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 15.0),

                      Container(
                        padding: EdgeInsets.only(left: 14.0,right: 14.0),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Telephone",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            SizedBox(
                              height: 12.0,
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: FlatButton(
                                    onPressed: (){

                                    },
                                    color: AppColors.secondaryElement,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                        "Update",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        )
                                    )
                                )
                            ),

                            SizedBox(
                              height: 35.0,
                            ),

                            Align(
                              alignment: Alignment.topLeft,
                              child:Text(
                                "RESET PASSWORD",
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),

                            SizedBox(height: 10.0),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "New Password",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Confirm New Password",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            SizedBox(
                              height: 12.0,
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: FlatButton(
                                    onPressed: (){

                                    },
                                    color: AppColors.secondaryElement,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                        "Change",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        )
                                    )
                                )
                            ),


                            SizedBox(
                              height: 35.0,
                            ),

                            Align(
                              alignment: Alignment.topLeft,
                              child:Text(
                                "STRIPE KEYS",
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),

                            SizedBox(height: 10.0),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "SECRET KEY",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "PUBLISHABLE KEY",
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder:UnderlineInputBorder (
                                    borderSide: BorderSide(color:Colors.grey[400]),
                                  )
                              ),
                            ),

                            SizedBox(
                              height: 12.0,
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: FlatButton(
                                    onPressed: (){

                                    },
                                    color: AppColors.secondaryElement,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                        "Save",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        )
                                    )
                                )
                            ),

                            SizedBox(
                              height: 25.0,
                            ),



                          ],

                        ),
                      ),

                    ],
                  ),



                ]
            )
        ));

  }
}