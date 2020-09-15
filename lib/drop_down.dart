/*
*  home_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/checkincashwidget.dart';
import 'package:p4u/checkincredit_card_widget.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/values.dart';


class DropDownScreen extends StatefulWidget {
  @override
  _DropDownScreenState createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  String Specialization;



  void onCombinedShapeTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCreditCardWidget()));

  void onCombinedShapePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCASHWidget()));

  void onBottomPaginationValueChanged(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 74, 144, 226),
      ),
      child: Stack(
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

                    SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                   Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.15,
                      //color:Colors.red
                      child: Column(
                        children: <Widget>[
                          Text("Hi     John",style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),),

                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.15,right: MediaQuery.of(context).size.width*0.15,top:4.0),
                          child:Text("Which parking lot are you attending to today?",style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                            textAlign: TextAlign.center,

                          )
                          ),

                        ],
                      ),


                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.75,
                      color: AppColors.secondaryBackground,
                      child:SingleChildScrollView(
                      child:Column(
                          children: <Widget>[

                            //Yaha sa start ha ya pora info
                            GestureDetector(
                              onTap:(){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeWidget()));

    },
                            child:Container(
                              width: MediaQuery.of(context).size.width,
                              //height: MediaQuery.of(context).size.height*0.3,
                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right:MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.019,bottom: MediaQuery.of(context).size.height*0.07),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Column(
                               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("PARKING LOT 1",style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height*0.019,
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColors.secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text("EV PARKING",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),),

                                                SizedBox(width: 15.0,),

                                                Text("5",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),)
                                              ],
                                            ),

                                            SizedBox(height: 5.0,),

                                            Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text("REGULAR",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),),

                                                SizedBox(width: 30.0,),

                                                Text("14",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),)
                                              ],
                                            ),
                                          ],
                                        ),


                                        Row(
                                          children: <Widget>[
                                            Text("HANDICAP",style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(width: 15.0,),

                                            Text("3",style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),


                            )),

                            //yaha end ha

                            SizedBox(height:15.0),
                             //yaha sa start ha info
                            GestureDetector(
                                onTap:(){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeWidget()));

                                },
                                child:Container(
                                  width: MediaQuery.of(context).size.width,
                                  //height: MediaQuery.of(context).size.height*0.3,
                                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right:MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.019,bottom: MediaQuery.of(context).size.height*0.07),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("PARKING LOT 2",style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),),
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height*0.019,
                                      ),

                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: AppColors.secondaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text("EV PARKING",style: TextStyle(
                                                      color: AppColors.primaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                    ),),

                                                    SizedBox(width: 15.0,),

                                                    Text("5",style: TextStyle(
                                                      color: AppColors.primaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                    ),)
                                                  ],
                                                ),

                                                SizedBox(height: 5.0,),

                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text("REGULAR",style: TextStyle(
                                                      color: AppColors.primaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                    ),),

                                                    SizedBox(width: 30.0,),

                                                    Text("14",style: TextStyle(
                                                      color: AppColors.primaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                    ),)
                                                  ],
                                                ),
                                              ],
                                            ),


                                            Row(
                                              children: <Widget>[
                                                Text("HANDICAP",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),),

                                                SizedBox(width: 15.0,),

                                                Text("3",style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),


                                )),

                            //yaha end ha

                            SizedBox(height:50.0),
                            Image(image:AssetImage("assets/images/bottompagination-3.png")),

                            SizedBox(height:10.0),









                          ],
                        )
                      ),
                    ),
                  ],
                )



          ]
      ),

    );
  }
}