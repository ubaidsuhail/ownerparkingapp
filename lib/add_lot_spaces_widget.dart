import 'package:flutter/material.dart';
import 'package:p4u/colors.dart';
import 'package:toast/toast.dart';
class AddLotSpacesWidget extends StatefulWidget {
  @override
  _AddLotSpacesScreenState createState() => _AddLotSpacesScreenState();
}

class _AddLotSpacesScreenState extends State<AddLotSpacesWidget> {
  bool checkBoxValue = false;
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
          child: GestureDetector(
            onTap: (){
              showAlertDialog(context, checkBoxValue);
            },
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
        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            showToast("Spaces Saved next step Location", gravity: Toast.BOTTOM,duration: Toast.LENGTH_LONG);
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(15.0)
            ),
            height: 35.0,
            width: 100.0,
            child: Center(
              child: Text('Save',style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}

showAlertDialog(BuildContext context,checkBoxValue) {

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Material(
          type: MaterialType.transparency,

          child: Stack(
            alignment: Alignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container( // A simplified version of dialog.
                  // alignment: Alignment.bottomCenter,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),


                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text('Zone Name'),

                        TextField(
                            decoration: InputDecoration(
                                hintText: "Enter name of the zone"
                            )
                        ),
                        Spacer(),
                        Spacer(),
                        Text('How many spaces in this zone'),

                        TextField(
                            decoration: InputDecoration(
                                hintText: "# of spaces"
                            )
                        ),
                        Spacer(),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(25.0)
                              ),
                              height: 40.0,
                              width: 100.0,
                              child: Center(child: Text("ADD ZONE",style: TextStyle(
                                  color: Colors.white
                              ),),),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),


            ],


          ));
    },
  );

}