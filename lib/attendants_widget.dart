/*
*  attendants_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/add_attendant_widget.dart';
import 'package:p4u/values.dart';


class AttendantsWidget extends StatelessWidget {
  
  void onNextButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddAttendantWidget()));
  
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

            Positioned(
              left: 25,
              top: MediaQuery.of(context).size.height*0.14,
              bottom: MediaQuery.of(context).size.height * 0.6,
              child: Text("Attendant Management",style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.3125,
              ),),
            ),

            Positioned(
                top: MediaQuery.of(context).size.height*0.20,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.68,
                  color: AppColors.secondaryBackground,
                  child:SingleChildScrollView(
                    child:Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        //Yaha sa start ha ya pora info
                        Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            height: MediaQuery.of(context).size.height*0.32,
                            //color: Colors.red,

                            child:Stack(
                              children: <Widget>[
                                //Text("hio"),

                                Positioned(
                                    top:30.0,
                                    bottom: 30.0,
                                    child:GestureDetector(
                                        onTap: (){
                                          //Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCASHWidget()));
                                        },
                                        child:Container(
                                          width: MediaQuery.of(context).size.width*0.9,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: Colors.white,
                                          ),

                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text("",style:TextStyle(
                                                    color: AppColors.secondaryText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13,
                                                  ),),

                                                  SizedBox(width: MediaQuery.of(context).size.width*0.31,),

                                                  Text("",style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),),


                                                ],
                                              ),

                                              //SizedBox(height:50.0),

                                              Expanded(
                                                child:Column(
//                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[

                                                   Text("Jake Witherspoon",style: TextStyle(
                                                     color: AppColors.secondaryText,
                                                     fontFamily: "Roboto",
                                                     fontWeight: FontWeight.w600,
                                                     fontSize: 17,
                                                   ),),

                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Text("123-123-1234",style: TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 17,
                                                        ),),

                                                        Text("jake@gmail.com",style: TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 17,
                                                        ),),
                                                      ],
                                                    )

                                                  ],
                                                ),

                                              ),

                                            ],
                                          ),



                                        ))
                                ),
                                Positioned(
                                  left:MediaQuery.of(context).size.width*0.3,
                                  child:Container(
                                    width: 90.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 7.0,color: AppColors.primaryText),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                      child: Image(image:AssetImage("assets/images/avatar-2.png"),fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),



                              ],
                            )),

                        //yaha end ha


                        Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            height: MediaQuery.of(context).size.height*0.32,
                            //color: Colors.red,

                            child:Stack(
                              children: <Widget>[
                                //Text("hio"),

                                Positioned(
                                    top:30.0,
                                    bottom: 30.0,
                                    child:GestureDetector(
                                        onTap: (){
                                          //Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCASHWidget()));
                                        },
                                        child:Container(
                                          width: MediaQuery.of(context).size.width*0.9,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: Colors.white,
                                          ),

                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text("",style:TextStyle(
                                                    color: AppColors.secondaryText,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13,
                                                  ),),

                                                  SizedBox(width: MediaQuery.of(context).size.width*0.31,),

                                                  Text("",style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),),


                                                ],
                                              ),

                                              //SizedBox(height:50.0),

                                              Expanded(
                                                child:Column(
//                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[

                                                    Text("Jake Witherspoon",style: TextStyle(
                                                      color: AppColors.secondaryText,
                                                      fontFamily: "Roboto",
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 17,
                                                    ),),

                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Text("123-123-1234",style: TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 17,
                                                        ),),

                                                        Text("jake@gmail.com",style: TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 17,
                                                        ),),
                                                      ],
                                                    )

                                                  ],
                                                ),

                                              ),

                                            ],
                                          ),



                                        ))
                                ),
                                Positioned(
                                  left:MediaQuery.of(context).size.width*0.3,
                                  child:Container(
                                    width: 90.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 7.0,color: AppColors.primaryText),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                      child: Image(image:AssetImage("assets/images/avatar-2.png"),fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),



                              ],
                            )),

                        //yaha end ha

                        Image(image:AssetImage("assets/images/bottompagination-3.png")),

                        SizedBox(height:10.0),









                      ],
                    ),
                  ),
                )),


            Positioned(
              top: MediaQuery.of(context).size.height*0.91,
              child:Container(
                  width: MediaQuery.of(context).size.width*0.45,
                  height: MediaQuery.of(context).size.height*0.06,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddAttendantWidget()));
                      },
                      color: AppColors.secondaryElement,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "ADD ANOTHER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ))
              ),
            ),


          ]
      ),

    );

  }
}