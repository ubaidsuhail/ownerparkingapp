import 'package:flutter/material.dart';
import 'package:p4u/colors.dart';

class AddLotSpacesScreen extends StatefulWidget {
  @override
  _AddLotSpacesScreenState createState() => _AddLotSpacesScreenState();
}

class _AddLotSpacesScreenState extends State<AddLotSpacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 210,
            height: 21,
            margin: EdgeInsets.only(left: 29, top: 65),
            child: Row(
              children: [
                Text(
                  "Zone Name",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 75, 74, 75),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text(
                  "# of Spaces",
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

        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 299,
            height: 24,
            margin: EdgeInsets.only(left: 29, top: 9),
            child: Row(
              children: [
                Container(
                  width: 94,
                  height: 21,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Handicapped",
                      contentPadding: EdgeInsets.all(0),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Color.fromARGB(255, 75, 74, 75),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    autocorrect: false,
                  ),
                ),
                Spacer(),
                Container(
                  width: 18,
                  height: 21,
                  margin: EdgeInsets.only(right: 98),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "34",
                      contentPadding: EdgeInsets.all(0),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Color.fromARGB(255, 75, 74, 75),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    autocorrect: false,
                  ),
                ),
                Container(
                  width: 20,
                  height: 22,
                  margin: EdgeInsets.only(right: 4),
                  child: Image.asset(
                    "assets/images/trash-2.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
        ),

        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 163,
            height: 22,
            margin: EdgeInsets.only(top: 111, right: 98),
            child: FlatButton(
              // onPressed: () => this.onAddAnotherPressed(context),
              color: Color.fromARGB(0, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              textColor: Color.fromARGB(255, 75, 74, 75),
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/plusbutton.png",),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add Another Zone",
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
    );
  }
}
