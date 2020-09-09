import 'package:flutter/material.dart';
import 'package:p4u/colors.dart';
import 'package:p4u/radii.dart';
import 'package:p4u/shadows.dart';



class AddLotDetailsTab extends StatefulWidget {
  @override
  _AddLotDeatilsTabState createState() => _AddLotDeatilsTabState();
}

class _AddLotDeatilsTabState extends State<AddLotDetailsTab> {

  bool checkBoxValue = true;
  bool checkBoxValueFalse = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 15.0,),
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
                width: MediaQuery.of(context).size.width * 0.8,
                height: 20,
                margin: EdgeInsets.only(left: 16,top: 5.0),
                child: TextField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'Name your parking lot'
                 ),
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  // maxLines: 1,
                  // autocorrect: false,
                ),
              ),

            ],
          ),
        ),
        Container(
          height: 108,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(top: 16),
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
              Container(
                margin: EdgeInsets.only(left: 12, top: 8, right: 126),
                child: Text(
                  "Description of your parking lot",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 70.0,
                  color: Colors.grey[300],
                  // width: MediaQuery.of(context).size.width * 0.5,
                  child: TextField(
                    decoration: InputDecoration(
                    border: InputBorder.none
                    ),

                  ),
                ),
              )
            ],
          ),
        ),

        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(top: 16,bottom: 16),
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
                width: MediaQuery.of(context).size.width * 0.8,
                height: 19,
                margin: EdgeInsets.only(left: 16,bottom: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Telephone",
                    contentPadding: EdgeInsets.all(0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: AppColors.accentText,
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
          margin: EdgeInsets.only(top: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: AppColors.primaryElement,
            boxShadow: [
              Shadows.primaryShadow,
            ],
            borderRadius: Radii.k5pxRadius,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 16, right: 143),
                    child: Text(
                      "Open 24 Hours ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 52,
                height: 32,
                margin: EdgeInsets.only(top: 11, right: 13),
                child: Switch.adaptive(
                  value: true,
                  inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                  onChanged: (value) {

                  },
                  activeColor: Color.fromARGB(255, 184, 184, 184),
                  activeTrackColor: Color.fromARGB(255, 0, 128, 255),
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: AppColors.primaryElement,
            boxShadow: [
              Shadows.primaryShadow,
            ],
            borderRadius: Radii.k5pxRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(left: 100, top: 4, right: 100),
                child: Text(
                  "OPERATING HOURS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 21,
                margin: EdgeInsets.only(left: 35, top: 6, right: 26),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 72,
                        height: 20,
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 186, 186, 186),
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Text(
                                "AM ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.accentText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 72,
                        height: 20,
                        margin: EdgeInsets.only(top: 1),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 186, 186, 186),
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Text(
                                "PM ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.accentText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Spacer(),
        Container(
          // height: 13.0,
          width: MediaQuery.of(context).size.width * 0.8,
          // color: Colors.white,
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            boxShadow: [
              Shadows.primaryShadow,
            ],
            borderRadius: Radii.k5pxRadius,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.0,),
              Text(
                "PARKING RATES",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.accentText,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: checkBoxValue,
                                activeColor: Colors.blue,
                                onChanged:(bool newValue){
                                  setState(() {
                                    checkBoxValue = newValue;
                                  });

                                }),
                          Text('Hourly')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: checkBoxValue,
                                activeColor: Colors.blue,
                                onChanged:(bool newValue){
                                  setState(() {
                                    checkBoxValue = newValue;
                                  });

                                }),
                            Text('Daily')
                          ],
                        )
                      ],
                    ),



                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: checkBoxValueFalse,
                                activeColor: Colors.blue,
                                onChanged:(bool newValue){
                                  setState(() {
                                    checkBoxValueFalse = newValue;
                                  });

                                }),
                            Text('Weekly')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: checkBoxValueFalse,
                                activeColor: Colors.blue,
                                onChanged:(bool newValue){
                                  setState(() {
                                    checkBoxValueFalse = newValue;
                                  });

                                }),
                            Text('Monthly')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

Spacer(),

        // Container(
        //   height: 84,
        //   width: MediaQuery.of(context).size.width * 0.8,
        //   margin: EdgeInsets.only(bottom: 16),
        //   decoration: BoxDecoration(
        //     color: AppColors.primaryBackground,
        //     boxShadow: [
        //       Shadows.primaryShadow,
        //     ],
        //     borderRadius: Radii.k5pxRadius,
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: [
        //       Container(
        //         margin: EdgeInsets.only(left: 100, top: 4, right: 100),
        //         child: Text(
        //           "PARKING RATES",
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             color: AppColors.accentText,
        //             fontFamily: "Roboto",
        //             fontWeight: FontWeight.w400,
        //             fontSize: 14,
        //           ),
        //         ),
        //       ),
        //       Container(
        //
        //         height: 19,
        //         margin: EdgeInsets.only(left: 35, top: 4, right: 45),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Align(
        //               alignment: Alignment.topLeft,
        //               child: Container(
        //                 width: 96,
        //                 height: 19,
        //                 child: Stack(
        //                   alignment: Alignment.center,
        //                   children: [
        //                     Positioned(
        //                       left: 0,
        //                       right: 0,
        //                       child: Row(
        //                         crossAxisAlignment: CrossAxisAlignment.stretch,
        //                         children: [
        //                           Align(
        //                             alignment: Alignment.centerLeft,
        //                             child: Container(
        //                               width: 16,
        //                               height: 16,
        //                               child: Image.asset(
        //                                 "assets/images/checkbox-2.png",
        //                                 fit: BoxFit.none,
        //                               ),
        //                             ),
        //                           ),
        //                           Spacer(),
        //                           Align(
        //                             alignment: Alignment.centerLeft,
        //                             child: Container(
        //                               width: 12,
        //                               height: 19,
        //                               child: TextField(
        //                                 decoration: InputDecoration(
        //                                   hintText: "\$ ",
        //                                   contentPadding: EdgeInsets.all(0),
        //                                   border: InputBorder.none,
        //                                 ),
        //                                 style: TextStyle(
        //                                   color: AppColors.accentText,
        //                                   fontFamily: "Roboto",
        //                                   fontWeight: FontWeight.w400,
        //                                   fontSize: 14,
        //                                 ),
        //                                 maxLines: 1,
        //                                 autocorrect: false,
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     Positioned(
        //                       child: Text(
        //                         "Hourly",
        //                         textAlign: TextAlign.left,
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             Spacer(),
        //             Align(
        //               alignment: Alignment.topLeft,
        //               child: Container(
        //                 width: 96,
        //                 height: 19,
        //                 child: Stack(
        //                   alignment: Alignment.center,
        //                   children: [
        //                     Positioned(
        //                       left: -1,
        //                       right: 0,
        //                       child: Row(
        //                         crossAxisAlignment: CrossAxisAlignment.stretch,
        //                         children: [
        //                           Align(
        //                             alignment: Alignment.centerLeft,
        //                             child: Container(
        //                               width: 17,
        //                               height: 17,
        //                               child: Image.asset(
        //                                 "assets/images/checkbox.png",
        //                                 fit: BoxFit.none,
        //                               ),
        //                             ),
        //                           ),
        //                           Spacer(),
        //                           Align(
        //                             alignment: Alignment.centerLeft,
        //                             child: Container(
        //                               width: 12,
        //                               height: 19,
        //                               child: TextField(
        //                                 decoration: InputDecoration(
        //                                   hintText: "\$ ",
        //                                   contentPadding: EdgeInsets.all(0),
        //                                   border: InputBorder.none,
        //                                 ),
        //                                 style: TextStyle(
        //                                   color: AppColors.accentText,
        //                                   fontFamily: "Roboto",
        //                                   fontWeight: FontWeight.w400,
        //                                   fontSize: 14,
        //                                 ),
        //                                 maxLines: 1,
        //                                 autocorrect: false,
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     Positioned(
        //                       child: Text(
        //                         "Weekly",
        //                         textAlign: TextAlign.left,
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Spacer(),
        //       Container(
        //         height: 19,
        //
        //         margin: EdgeInsets.only(left: 35, right: 45, bottom: 11),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Align(
        //               alignment: Alignment.bottomLeft,
        //               child: Container(
        //                 width: 96,
        //                 height: 19,
        //                 child: Row(
        //                   children: [
        //                     Container(
        //                       width: 16,
        //                       height: 16,
        //                       child: Image.asset(
        //                         "assets/images/checkbox-2.png",
        //                         fit: BoxFit.none,
        //                       ),
        //                     ),
        //                     Container(
        //                       margin: EdgeInsets.only(left: 9),
        //                       child: Text(
        //                         "Daily",
        //                         textAlign: TextAlign.left,
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                       ),
        //                     ),
        //                     Spacer(),
        //                     Container(
        //                       width: 12,
        //                       height: 19,
        //                       child: TextField(
        //                         decoration: InputDecoration(
        //                           hintText: "\$ ",
        //                           contentPadding: EdgeInsets.all(0),
        //                           border: InputBorder.none,
        //                         ),
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                         maxLines: 1,
        //                         autocorrect: false,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             Spacer(),
        //             Align(
        //               alignment: Alignment.bottomLeft,
        //               child: Container(
        //                 width: 96,
        //                 height: 19,
        //                 child: Row(
        //                   children: [
        //                     Container(
        //                       width: 17,
        //                       height: 17,
        //                       child: Image.asset(
        //                         "assets/images/checkbox.png",
        //                         fit: BoxFit.none,
        //                       ),
        //                     ),
        //                     Spacer(),
        //                     Container(
        //                       margin: EdgeInsets.only(right: 7),
        //                       child: Text(
        //                         "Monthly",
        //                         textAlign: TextAlign.left,
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                       ),
        //                     ),
        //                     Container(
        //                       width: 12,
        //                       height: 19,
        //                       child: TextField(
        //                         decoration: InputDecoration(
        //                           hintText: "\$ ",
        //                           contentPadding: EdgeInsets.all(0),
        //                           border: InputBorder.none,
        //                         ),
        //                         style: TextStyle(
        //                           color: AppColors.accentText,
        //                           fontFamily: "Roboto",
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                         ),
        //                         maxLines: 1,
        //                         autocorrect: false,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.8,
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
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  "Accept Cash at the Gate ?",
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
              Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 52,
                  height: 32,
                  margin: EdgeInsets.only(top: 11, right: 13),
                  child: Switch.adaptive(
                    value: true,
                    inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                    onChanged: (value) {

                    },
                    activeColor: Color.fromARGB(255, 184, 184, 184),
                    activeTrackColor: Color.fromARGB(255, 0, 128, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
Spacer(),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Colors.blue[900],
            width: 100,
            height: 30,
            child: FlatButton(
              // onPressed: () => this.onNextButtonPressed(context),
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              textColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(0),
              child: Text(
                "NEXT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
