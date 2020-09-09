/*
*  reviews_widget.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/values.dart';


class ReviewsWidget extends StatelessWidget {
  
  void onBottomPaginationValueChanged(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:SingleChildScrollView(
            child:Container(
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
                              children: <Widget>[
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.1,
                                ),

                                Text(
                                    "REVIEWS",
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                    )),

                                SizedBox(
                                  height: 15.0,
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 2.0,bottom: 2.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.white,
                                  ),
                                  child:Text.rich(
                                    TextSpan(
                                      text: "",

                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                              padding:EdgeInsets.only(bottom: 5.0),
                                            child: Text("Senaya City Mall\t\t\t",style:TextStyle(
                                              color: Colors.grey[300],
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                            ),),
                                          ),

                                        ),
                                        WidgetSpan(
                                          child: Container(
                                              margin: EdgeInsets.only(top: 6.0),
                                              child:Icon(Icons.keyboard_arrow_down,size:35.0,color: Colors.black,)
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ),

                                SizedBox(
                                  height: 20.0,
                                ),

                                //Yaha sa start ha ya pora info
                                Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    height: MediaQuery.of(context).size.height*0.7,

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
                                                    children: <Widget>[
                                                   Expanded(
                                                     flex: 2,
                                                     child: Container(
                                                       decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.only(
                                                           topLeft: Radius.circular(15.0),
                                                           topRight: Radius.circular(15.0),
                                                         ),
                                                         color: Colors.white,
                                                       ),

                                                         child:Column(
                                                           mainAxisAlignment: MainAxisAlignment.center,
                                                           children: <Widget>[
                                                             SizedBox(
                                                               height: 5.0,
                                                             ),
                                                             Text("John Smilth", style: TextStyle(
                                                               color: Color.fromARGB(255, 56, 56, 56),
                                                               fontFamily: "Roboto",
                                                               fontWeight: FontWeight.w700,
                                                               fontSize: 19,
                                                             ),
                                                             ),

                                                             Padding(
                                                               padding: EdgeInsets.only(left: 30.0,right: 25.0,top: 20.0),
                                                               child:Text("Nice Parking lot - well maintained but not enough lights", style: TextStyle(
                                                                 color: Color.fromARGB(255, 56, 56, 56),
                                                                 fontFamily: "Roboto",
                                                                 fontWeight: FontWeight.w700,
                                                                 fontSize: 20,
                                                               ),
                                                               ),
                                                             ),


                                                           ],
                                                         )
                                                     ),
                                                   ),

                                                   Expanded(
                                                     flex: 1,
                                                     child: Container(
                                                       width: MediaQuery.of(context).size.width*0.9,
                                                         decoration: BoxDecoration(
                                                           borderRadius: BorderRadius.only(
                                                             bottomLeft: Radius.circular(15.0),
                                                             bottomRight: Radius.circular(15.0),
                                                           ),
                                                           color: Colors.grey[200],
                                                         ),

                                                         child:Column(
                                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                           children: <Widget>[
                                                             Image.asset(
                                                               "assets/images/stars45.png",
                                                             ),
                                                             Image(image:AssetImage("assets/images/bottompagination.png")),
                                                           ],
                                                         )
                                                         )
                                                     ),

                                                    ],
                                                  ),
                                                )
                                            )
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



                    ]
                )
                ]
            )),

        )
    )
    );
  }
}