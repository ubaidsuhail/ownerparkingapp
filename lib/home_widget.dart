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
import 'package:p4u/values.dart';
import 'package:p4u/staticfile.dart';
import 'package:p4u/menu_owner_widget.dart';
import 'package:p4u/menu_user_widget.dart';


class HomeWidget extends StatelessWidget {
  
  void onCombinedShapeTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCreditCardWidget()));
  
  void onCombinedShapePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCASHWidget()));
  
  void onBottomPaginationValueChanged(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            if(StaticData.check == 1)
            {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenuOwnerWidget()));
            }
            else if(StaticData.check == 2 )
            {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenuUserWidget()));
            }
          },
          child: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: Color.fromARGB(255, 74, 144, 226),
          color: AppColors.secondaryBackground,
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
                  top: MediaQuery.of(context).size.height*0.12,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.88,
                    child:SingleChildScrollView(
                    child:Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child:Column(
                            children: <Widget>[
                              SizedBox(height:10.0),
                              Text("PARKING LOT 1",style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),),

                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.019,
                              ),
                              Container(
                                margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right:MediaQuery.of(context).size.width*0.05),
                              width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: AppColors.secondaryBackground,
                              ),

                              child:Row(
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
                                            fontSize: 15,
                                          ),),

                                          SizedBox(width: 15.0,),

                                          Text("5",style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
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
                                            fontSize: 15,
                                          ),),

                                          SizedBox(width: 30.0,),

                                          Text("14",style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
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
                                        fontSize: 15,
                                      ),),

                                      SizedBox(width: 15.0,),

                                      Text("3",style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),)
                                    ],
                                  ),
                                ],
                              )),

                              SizedBox(
                                height: 8.0,
                              ),


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
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCASHWidget()));
                                              },
                                              child:Container(
                                                width: MediaQuery.of(context).size.width*0.9,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15.0),
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey[500])
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
                                                        Text("id# 49746910456",style:TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 13,
                                                        ),),

                                                        SizedBox(width: MediaQuery.of(context).size.width*0.31,),

                                                        Text("\t\t\t\tRegular",style: TextStyle(
                                                          color: Color.fromARGB(255, 9, 68, 138),
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 16,
                                                        ),),


                                                      ],
                                                    ),

                                                    SizedBox(height:30.0),

                                                    Expanded(
                                                      child:Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: <Widget>[

                                                          Container(
                                                            margin: EdgeInsets.only(left:10.0,right: 10.0),
                                                            width: MediaQuery.of(context).size.width*0.9,

                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: <Widget>[
                                                                Text("Toyota Camry",style: TextStyle(
                                                                  color:Color.fromARGB(255, 9, 68, 138),
                                                                  fontFamily: "Roboto",
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 16,
                                                                ),),
                                                                Text("John Smith",style: TextStyle(
                                                                  color:Color.fromARGB(255, 9, 68, 138),
                                                                  fontFamily: "Roboto",
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 16,
                                                                ),),
                                                              ],
                                                            )

                                                          ),

                                                          Container(
                                                              margin: EdgeInsets.only(left:10.0,right: 20.0),
                                                              width: MediaQuery.of(context).size.width*0.9,

                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                  Text("LICENSE PLATE",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                  Text("Arriving",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                ],
                                                              )

                                                          ),

                                                          Container(
                                                              margin: EdgeInsets.only(left:20.0,right: 30.0),
                                                              width: MediaQuery.of(context).size.width*0.9,

                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                  Text("ABC-1234",style: TextStyle(
                                                                    color:Color.fromARGB(255, 255, 2, 33),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                  Text("9:07", style:TextStyle(
                                                                    color: Color.fromARGB(255, 10, 36, 99),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w300,
                                                                    fontSize: 14,
                                                                  ),),
                                                                ],
                                                              )

                                                          ),







                                                        ],
                                                      ),

                                                    ),

                                                  ],
                                                ),



                                              ))
                                      ),
                                      Positioned(
                                        left:MediaQuery.of(context).size.width*0.36,
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


                              // yaha info start
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
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => CHECKINCreditCardWidget()));
                                              },
                                              child:Container(
                                                width: MediaQuery.of(context).size.width*0.9,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15.0),
                                                  color: Colors.white,
                                                    border: Border.all(color: Colors.grey[500])
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
                                                        Text("id# 49746910434",style:TextStyle(
                                                          color: AppColors.secondaryText,
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 13,
                                                        ),),

                                                        SizedBox(width: MediaQuery.of(context).size.width*0.31,),

                                                        Text("\t\t\t\tRegular",style: TextStyle(
                                                          color: Color.fromARGB(255, 9, 68, 138),
                                                          fontFamily: "Roboto",
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 16,
                                                        ),),

                                                      ],
                                                    ),

                                                    SizedBox(height:30.0),

                                                    Expanded(
                                                      child:Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: <Widget>[

                                                          Container(
                                                              margin: EdgeInsets.only(left:10.0,right: 10.0),
                                                              width: MediaQuery.of(context).size.width*0.9,

                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                  Text("Honda HRV",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                  Text("Dorothy McIntosh",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                ],
                                                              )

                                                          ),

                                                          Container(
                                                              margin: EdgeInsets.only(left:10.0,right: 20.0),
                                                              width: MediaQuery.of(context).size.width*0.9,

                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                  Text("LICENSE PLATE",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                  Text("Arriving",style: TextStyle(
                                                                    color:Color.fromARGB(255, 9, 68, 138),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                ],
                                                              )

                                                          ),

                                                          Container(
                                                              margin: EdgeInsets.only(left:20.0,right: 30.0),
                                                              width: MediaQuery.of(context).size.width*0.9,

                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                  Text("ABC-1234",style: TextStyle(
                                                                    color:Color.fromARGB(255, 255, 2, 33),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w500,
                                                                    fontSize: 16,
                                                                  ),),
                                                                  Text("9:15", style:TextStyle(
                                                                    color: Color.fromARGB(255, 10, 36, 99),
                                                                    fontFamily: "Roboto",
                                                                    fontWeight: FontWeight.w300,
                                                                    fontSize: 14,
                                                                  ),),
                                                                ],
                                                              )

                                                          ),







                                                        ],
                                                      ),

                                                    ),

                                                  ],
                                                ),



                                              ))
                                      ),
                                      Positioned(
                                        left:MediaQuery.of(context).size.width*0.36,
                                        child:Container(
                                          width: 90.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 7.0,color: AppColors.primaryText),
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipOval(
                                            child: Image(image:AssetImage("assets/images/iconfinder-female1-403023.png"),fit: BoxFit.fill,),
                                          ),
                                        ),
                                      ),



                                    ],
                                  )),

                              //yaha end ha

                            ],
                          ),
                        ),

                        SizedBox(height:20.0),
                        Image(image:AssetImage("assets/images/bottompagination-3.png")),

                        SizedBox(height:10.0),



                      ],
                    )
                  ))),


            ]
        ),

      ),
    );
  }
}