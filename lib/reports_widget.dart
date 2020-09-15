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
import 'package:p4u/report_results_widget.dart';
import 'package:p4u/reports_widget.dart';
import 'package:p4u/values.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
class ReportsWidget extends StatefulWidget {
  @override
  _DropDownScreenState createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<ReportsWidget> {
  DateTime _selectedDate;
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  @override
  void initState() {
    // TODO: implement initState
    _resetSelectedDate();
    super.initState();
  }
  void _resetSelectedDate() {
    _selectedDate = DateTime.now();

  }

  List doctorDetails = [];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  String Specialization;

  List UserType = [
    {'id': 0, 'name': 'Senaya City Mall'},
    {'id': 1, 'name': 'Parking Plaza'},
    {'id': 2, 'name': 'Mall of America'},
    {'id': 3, 'name': 'Tyson Corner Mall Parking'},
    {'id': 4, 'name': 'Cumberland Mall'}
  ];

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

            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Row(


                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("REPORTS",textAlign:TextAlign.left,textScaleFactor: 1,style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 140,
              child: Container(
                height: 45.0,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: Colors.white

                ),
                padding: EdgeInsets.only(left: 0, right: 0, top: 0),
//                    color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            value: Specialization,
                            iconSize: 30,
                            icon: (Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue[900],
                            )),
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                            hint: Text(
                              'Select Parking Mall',
                              textScaleFactor: 0.85,
                              style: TextStyle(color: Colors.blue[900]),
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                Specialization = newValue;
                                print(Specialization);
                              });
                            },
                            items: UserType?.map((item) {
                              return new DropdownMenuItem(
                                child: new Text(
                                  item['name'],
                                  style: TextStyle(
                                      color: Colors.blue[900]),
                                ),
                                value: item['name'].toString(),
                              );
                            })?.toList() ??
                                [],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Row(


                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        // color: Colors.white,
                        height: 35.0,
                        width: 100.0,
                        child: Center(
                          child: Text('Select Start'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)
                        ),

                        height: 35.0,
                        width: 100.0,
                        child: Center(
                          child: Text('Select Finish'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ReportResultsWidget()));
                      }
                      ,
                      child: Container(
                        // height: MediaQuery.of(context).size.height *0.18,
                          width: MediaQuery.of(context).size.width,
                          color:Colors.white,child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CalendarTimeline(
                          initialDate: _selectedDate,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now()
                              .add(Duration(days: 365)),
                          onDateSelected: (date) {
                            _selectedDate = date;
                            setState(() {
                              // String _formattedate =
                              // new DateFormat.yMMMd()
                              //     .format(_selectedDate);
                              // apptDate = _formattedate;
                              // print("Date is : " + apptDate);
                            });
                          },
                          leftMargin: 20,
                          monthColor: Colors.blue[900],
                          dayColor: Colors.teal[200],
                          dayNameColor: Colors.white,
                          activeDayColor: Colors.white,
                          activeBackgroundDayColor: Colors.blue,
                          dotsColor: Colors.white,

                          // selectableDayPredicate: (date) =>
                          //     date.day != 23,
                          locale: 'en',
                        ),
                      )),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ReportResultsWidget()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 40.0,
                      // color: Colors.red,
                      child: Center(child: Text("Next"),)
                  ),
                ),
              ),
            ),
          ]
      ),

    );
  }
  Widget hourMinute12HCustomStyle(){
    return new TimePickerSpinner(
      // itemWidth: 30.0,
      alignment: Alignment.topCenter,
      time: DateTime.now(),
      // isShowSeconds: true,
      is24HourMode: false,
      normalTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.blue
      ),
      highlightedTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.black
      ),
      spacing: 15,
      itemHeight: 50,
      isForce2Digits: true,
      minutesInterval: 1,
      onTimeChange: (time) {
        setState(() {
          // _dateTime = time;
        });
      },
    );
  }
}