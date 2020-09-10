import 'package:flutter/material.dart';
import 'package:p4u/add_add_attendant_widget.dart';
import 'package:p4u/add_attendant_widget.dart';
import 'package:p4u/colors.dart';


class AddLotAttendantScreen extends StatefulWidget {
  @override
  _AddLotAttendantScreenState createState() => _AddLotAttendantScreenState();
}

class _AddLotAttendantScreenState extends State<AddLotAttendantScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 60, top: 14, right: 61),
            child: Text(
              "\nASSIGN ATTENDANTS TO THIS LOT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.secondaryText,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w300,
                fontSize: 16,
                height: 1.25,
              ),
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 120,
              height: 89,
              margin: EdgeInsets.only(left: 35, top: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 61,
                      height: 61,
                      child: Image.asset(
                        "assets/images/avatar.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 18,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Jake Witherspoon",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 300,
              height: 52,
              margin: EdgeInsets.only(top: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Attendant List",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 74, 74, 74),
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    height: 32,
                    margin: EdgeInsets.only(top: 3),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 230, 233, 238),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 7,
                          right: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 73,
                                  height: 17,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Option One",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 74, 74, 74),
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                    autocorrect: false,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 7,
                                  height: 11,
                                  margin: EdgeInsets.only(top: 3),
                                  child: Image.asset(
                                    "assets/images/affordance.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddAttendantWidget()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 0, 0, 0),
                ),
                width: 165,
                height: 22,
                margin: EdgeInsets.only(top: 54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/plusbutton.png",),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add an Attendant",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 75, 74, 75),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Align(
            // alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 209, 2, 28),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 100,
              height: 30,
              // margin: EdgeInsets.only(right: 131),
              child: Center(
                child: Text(
                  "SAVE",
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
      ),
    );
  }
}
