import 'package:flutter/material.dart';

// import 'package:p4u/Bilalscode/add_lots/add_lot_details.dart';

// import 'package:p4u/Bilalscode/add_lots/add_lot_spaces_screen.dart';
import 'package:p4u/add_lot_spaces_widget.dart';
import 'package:p4u/borders.dart';
import 'package:p4u/colors.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/benefits.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/info.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/reviews.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/gallery.dart';

class SubscriptionsWidget extends StatefulWidget {


  @override
  _OnTapScreenState createState() => _OnTapScreenState();
}

class _OnTapScreenState extends State<SubscriptionsWidget>
    with TickerProviderStateMixin {
  bool checkBoxValue = false;
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    smallCircularContainer(IconData icon) {
      return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.white, width: 1),
          color: Colors.transparent,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
      );
    }

    bigCircularContainer(int percentage) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.white, width: 1),
            color: Colors.black,
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    percentage.toString() + ' %',
                    style: TextStyle(
                        color: Color.fromRGBO(173, 129, 38, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Discount',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(
      //     color: Colors.black,
      //   ),
      //   title: Text(
      //     widget.shopName,
      //     softWrap: true,
      //     style: TextStyle(color: Colors.black,fontSize: 15),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Stack(
          // overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Container(height: 650.0,),
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
              top: MediaQuery.of(context).size.height * 0.1 ,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // decoration: BoxDecoration,
                      height: 50.0,
                      width: MediaQuery.of(context).size.width ,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Text('SUBSCRIPTIONS',textScaleFactor: 1.1, style: TextStyle(
                              color: Colors.white,

                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 334,
                      height: 74,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: AppColors.ternaryBackground,
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 25,
                            margin: EdgeInsets.only(left: 30, top: 8, right: 47),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Active Plan",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 1),
                                    child: Text(
                                      "Expiration",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 19,
                            margin: EdgeInsets.only(left: 29, top: 3, right: 23),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 100,
                                    height: 19,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "INTRODUCTION",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 74, 74, 74),
                                        fontFamily: "Roboto",
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
                                    width: 122,
                                    height: 19,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "December 12, 2020",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 74, 74, 74),
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      width: 330,
                      height: 102,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 32,
                            margin: EdgeInsets.only(left: 15, top: 18, right: 18),
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                              border: Border.fromBorderSide(Borders.secondaryBorder),
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "credit card number",
                                  // contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 74, 74, 74),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            margin: EdgeInsets.only(left: 15, top: 8, right: 19),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 116,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                      border: Border.fromBorderSide(Borders.secondaryBorder),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 59,
                                          height: 19,
                                          margin: EdgeInsets.only(right: 25,top: 10.0),
                                          child: Center(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "mm/yyyy",
                                                // contentPadding: EdgeInsets.all(0),
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 74, 74, 74),
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                              autocorrect: false,
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
                                    width: 101,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                      border: Border.fromBorderSide(Borders.secondaryBorder),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 27,
                                          height: 19,
                                          margin: EdgeInsets.only(right: 34,top: 10.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "CCV",
                                              // contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 74, 74, 74),
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      width: 335,
                      height: 193,

                      margin: EdgeInsets.only(left: 0, top: 20),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 193,
                              // color: Colors.red,
                              // decoration: BoxDecoration(
                              //   boxShadow: [
                              //     BoxShadow(
                              //       color: Color.fromARGB(31, 0, 0, 0),
                              //       offset: Offset(04, 6),
                              //       blurRadius: 16,
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                "assets/images/combined-shape-3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 43,
                            top: 75,
                            right: 36,
                            bottom: -1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 140,
                                    height: 19,
                                    margin: EdgeInsets.only(right: 55),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "INTRODUCTION PLAN",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 74, 74, 74),
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  // margin: EdgeInsets.only(top: 10),/
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 45,
                                          height: 19,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "\$10.00",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 74, 74, 74),
                                              fontFamily: "Roboto",
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
                                          width: 51,
                                          height: 19,
                                          margin: EdgeInsets.only(top: 0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "21 Days",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 74, 74, 74),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                            maxLines: 1,
                                            autocorrect: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image(image: AssetImage("assets/images/bottompagination-3.png"),),

                              ],
                            ),
                          ),
                          Positioned(
                            left: 124,
                            top: 3,
                            child: Image.asset(
                              "assets/images/logo.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        showAlertDialog(context, checkBoxValue);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 55),
                        child: Center(
                          child: Text(
                            "PAY",
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
              ),
            ),




            // Positioned(
            //   top: 120.0,
            //   child:
            //     Container(
            //       height: 100.0,
            //       width: 350.0,
            //       color: Colors.green,
            //     )),
            // Expanded(
            //   // height: 600.0,
            //   // width: double.infinity,
            //   // color: Color.fromRGBO(222, 222, 222, 1),
            //   child: AddLotDetailsTab(),
            // ),
          ],
        ),
      ),
    );
  }
}


showAlertDialog(BuildContext context,checkBoxValue) {

  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text("Remind me later"),
    onPressed:  () {},
  );
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget launchButton = FlatButton(
    child: Text("Launch missile"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Notice"),
    content: Text("Launching this missile will destroy the entire universe. Is this what you intended to do?"),
    actions: [
      remindButton,
      cancelButton,
      launchButton,
    ],
  );

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
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),


                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      Container(decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(51, 0, 0, 0),
                            offset: Offset(0, 20),
                            blurRadius: 40,
                          ),
                        ],

                        // borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width * 0.73,
                          child: Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.of(context).pop()
                                      ;                              },
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Image.asset(
                                        "assets/images/oval-6-2.png",
                                        // width: 80.0,
                                        // height: 80.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Parking 4U",style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),

                              SizedBox(
                                height: 30.0,
                              ),
                              Divider(
                                thickness: 1.5,
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  child: TextField(
                                    // controller: _controller,

                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                        prefixIcon: Image(image: AssetImage("assets/images/imported-layers-2.png"),)
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  child: TextField(
                                    // controller: _controller,

                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Card Number",
                                        hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                        // hintStyle: TextStyle(color: Colors.grey[300]),
                                        prefixIcon:  Image(image: AssetImage("assets/images/group.png"),)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Color.fromARGB(51, 0, 0, 0),
                                        //     offset: Offset(0, 20),
                                        //     blurRadius: 40,
                                        //   ),
                                        // ],
                                        border: Border.all(width: 1.0,color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.305,
                                      child: TextField(
                                        // controller: _controller,

                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "MM / YY",
                                            hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                            // hintStyle: TextStyle(color: Colors.grey[300]),
                                            prefixIcon: Image(image: AssetImage("assets/images/imported-layers-4.png"),)
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Color.fromARGB(51, 0, 0, 0),
                                        //     offset: Offset(0, 20),
                                        //     blurRadius: 40,
                                        //   ),
                                        // ],
                                        border: Border.all(width: 1.0,color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.305,
                                      child: TextField(
                                        // controller: _controller,

                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "",
                                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                          prefixIcon: IconButton(
                                            // onPressed: () => _controller.clear(),
                                              icon: Image(image: AssetImage("assets/images/imported-layers.png"),)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  // color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      new Checkbox(value: checkBoxValue,
                                          activeColor: Colors.green,
                                          onChanged:(bool newValue){
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });

                                          }),
                                      Text('Remember me',style: TextStyle(
                                          color: Colors.grey[300]
                                      ),)
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 30.0,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pop();
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(

                                            title: Text(
                                              "THANK YOU",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(),
                                            ),
                                            content: Text("Your INTRODUCTION plan \n is now active",
                                              textAlign: TextAlign.center,
                                            ),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text("Ok"),
                                                onPressed: () {
                                                  Navigator.pop(context);
//                    Navigator.pushNamed(context, 'DashboardHome');
                                                },
                                              )
                                            ],
                                          );
                                        });
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => CCPaymentSuccess()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Color.fromARGB(51, 0, 0, 0),
                                      //     offset: Offset(0, 20),
                                      //     blurRadius: 40,
                                      //   ),
                                      // ],
                                      border: Border.all(width: 1.0,color: Colors.grey[300]),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                    height: MediaQuery.of(context).size.height * 0.08,
                                    width: MediaQuery.of(context).size.width,

                                    child: Center(child: Text('PAY \$ 10.00',style: TextStyle(color: Colors.white),)),
                                  ),
                                ),
                              ),

                            ],
                          )

                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.018,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryText,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Color.fromARGB(51, 0, 0, 0),
                            //     offset: Offset(0, 20),
                            //     blurRadius: 40,
                            //   ),
                            // ],
                            border: Border.all(width: 3.0,color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
//                width: 90,
//                height: 116,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                            child: Image.asset(
                              "assets/images/logo.png",
                              width: 70.0,
                              height: 70.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],


          ));
    },
  );
}

