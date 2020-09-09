/*
*  add_attendant_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/attendants_widget.dart';
import 'package:p4u/values.dart';


class AddAttendantWidget extends StatelessWidget {
  
  void onAddButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AttendantsWidget()));
  
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




              Padding(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.06),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child:GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_backspace,color: Colors.white,),
                    ),
                  ),
                  
                  
                  Container(
                   height: MediaQuery.of(context).size.height*0.07,
                   margin: EdgeInsets.only(left: 20.0,top: 10.0),
                    child:Text("Add an Attendant",style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    ),
                  ),


                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.85,
                    color: AppColors.primaryText,
                    child:Column(
                      children: <Widget>[

                        SizedBox(
                          height: 25.0,
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),

                                )
                              ]
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText:"Name",
                                hintStyle: TextStyle(color: Colors.black),
                                contentPadding: EdgeInsets.only(left: 10.0,top: 40.0)
                            ),
                            style: TextStyle(fontSize: 15.0),
                          ),

                        ),



                        SizedBox(
                          height: 25.0,
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),

                                )
                              ]
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText:"Email",
                                hintStyle: TextStyle(color: Colors.black),
                                contentPadding: EdgeInsets.only(left: 10.0,top: 40.0)
                            ),
                            style: TextStyle(fontSize: 15.0),
                          ),

                        ),

                        SizedBox(
                          height: 25.0,
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),

                                )
                              ]
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText:"Telephone",
                                hintStyle: TextStyle(color: Colors.black),
                                contentPadding: EdgeInsets.only(left: 10.0,top: 40.0)
                            ),
                            style: TextStyle(fontSize: 15.0),
                          ),

                        ),


                        SizedBox(
                          height: 25.0,
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),

                                )
                              ]
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText:"Password",
                              hintStyle: TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10.0,top: 40.0),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                            style: TextStyle(fontSize: 15.0),

                          ),

                        ),

                        Spacer(),

                        Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            height: MediaQuery.of(context).size.height*0.07,

                            child: FlatButton(
                                onPressed: ()  {
                                  Navigator.pop(context);
                                },
                                color: AppColors.secondaryElement,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "ADD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                            )
                        ),
                        SizedBox(
                          height: 10.0,
                        ),

                      ],
                    ),




                  ),
                ],
              )
              ),





            ]
        ),

      ),

    ));
  }
}