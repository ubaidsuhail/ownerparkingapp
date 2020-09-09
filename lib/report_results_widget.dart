/*
*  report_results_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/values.dart';


class ReportResultsWidget extends StatelessWidget {
  
  void onNextButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:Container(
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
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenlColumn(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.1,
                              ),

                             Container(
                               width: MediaQuery.of(context).size.width,
                               padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.1,top: 10.0),
                               child:  Text(
                                 "REPORTS",
                                 style:TextStyle(
                                   color: AppColors.primaryText,
                                   fontFamily: "Roboto",
                                   fontWeight: FontWeight.w400,
                                   fontSize: 21,

                                 ),
                               ),
                             ),


                              SizedBox(
                                height: 15.0,
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top: 10.0,right:MediaQuery.of(context).size.width*0.05),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Container(
                                      padding: EdgeInsets.only(left:7.0,right: 7.0,top: 7.0,bottom: 7.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5.0),
                                        border: Border.all(
                                        color: Colors.blue,
                                      ),

                                      ),
                                      child:Text("January 01, 2020",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 74, 74, 74),
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(left:7.0,right: 7.0,top: 7.0,bottom: 7.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5.0),
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),

                                      ),
                                      child:Text("January 31, 2020",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 74, 74, 74),
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),),
                                    )


                                  ],
                                )
                              ),

                              SizedBox(
                                height: 15.0,
                              ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              child:   Text("Senayan City Mall",style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                              SizedBox(
                                height: 15.0,
                              ),


                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.grey[500])
                                ),
                                padding: EdgeInsets.only(top: 22.0,bottom: 22.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("623 regular parking spaces",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("30 EV parking spaces",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("18 Wheelchair Accessible",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 15.0,),

                                            Text("Total",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("\$ 623.25",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("\$ 95.00",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("\$ 32.00",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 15.0,),

                                            Text("\$ 750.25",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),


                              SizedBox(
                                height: 20.0,
                              ),

                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(color: Colors.grey[500])
                                ),
                                padding: EdgeInsets.only(top: 22.0,bottom: 22.0,left: 23.0,right: 23.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Mike Smith",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("John Michaels",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("Lisa White",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 15.0,),

                                            Text("Total",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("\$ 300.25",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("\$ 195.00",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 4.0,),

                                            Text("\$ 255.00",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),),

                                            SizedBox(height: 15.0,),

                                            Text("\$ 750.25",style: TextStyle(
                                              color: Color.fromARGB(255, 10, 36, 99),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),


                              SizedBox(
                                height: 25.0,
                              ),

                              Container(
                                  width: MediaQuery.of(context).size.width*0.4,
                                  height: MediaQuery.of(context).size.height*0.07,
                                  child:FlatButton(
                                      onPressed: () {
                                          print("hi");
                                      },
                                      color: AppColors.secondaryElement,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      textColor: Color.fromARGB(255, 255, 255, 255),
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        "Done",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )

                              ),

                              SizedBox(
                                height: 15.0,
                              ),





                            ]
                        )
                      ]
                  )
        ),



    ));
  }
}