import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:p4u/colors.dart';
import 'package:p4u/radii.dart';
import 'package:p4u/shadows.dart';

class AddLotLocationScreen extends StatefulWidget {
  @override
  _AddLotLocationScreenState createState() => _AddLotLocationScreenState();
}

class _AddLotLocationScreenState extends State<AddLotLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 328,
                height: 446,
                margin: EdgeInsets.only(top: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: Radii.k5pxRadius,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 280,
                            height: 19,
                            margin: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Lot Address",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 117, 123, 126),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: Radii.k5pxRadius,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 168,
                            height: 19,
                            margin: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "City",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 117, 123, 126),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: Radii.k5pxRadius,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 33,
                            height: 19,
                            margin: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "State",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 117, 123, 126),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50,
                            height: 19,
                            margin: EdgeInsets.only(right: 99),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Zipcode",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 117, 123, 126),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 218,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: Radii.k5pxRadius,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, top: 22),
                              child: Text(
                                "Select your location by moving the pointer",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.accentText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: -0.175,
                                ),
                              ),
                            ),
                          ),

                          // Container(
                          //   height: 167,
                          //   margin: EdgeInsets.only(left: 1, top: 9, right: 2),
                          //   child: GoogleMap(
                          //     onMapCreated: (controller) {
                          //
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                color: AppColors.primaryBackground,
                // boxShadow: [
                //   Shadows.primaryShadow,
                // ],
                border: Border.all(color: Colors.grey[200]),
                borderRadius: Radii.k5pxRadius,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    height: 40,
                    // margin: EdgeInsets.only(left: 126, top: 36),
                    child: Image.asset(
                      "assets/images/file-icon.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only( top: 10),
                    child: Text(
                      "Upload Lot image",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(15.0)
              ),
              height: 35.0,
              width: 100.0,
              child: Center(
                child: Text('Next',style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}
