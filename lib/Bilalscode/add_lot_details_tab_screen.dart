import 'package:flutter/material.dart';
import 'package:p4u/Bilalscode/add_lot_attendants_screen.dart';
import 'package:p4u/Bilalscode/add_lot_details.dart';
import 'package:p4u/Bilalscode/add_lot_location_screen.dart';
import 'package:p4u/Bilalscode/add_lot_spaces_screen.dart';
import 'package:p4u/add_lot_spaces_widget.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/benefits.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/info.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/reviews.dart';
// import 'package:golden_app/Dashboard/screens/home_screens/services/onTap/gallery.dart';
class OnTapScreen extends StatefulWidget {


  @override
  _OnTapScreenState createState() => _OnTapScreenState();
}

class _OnTapScreenState extends State<OnTapScreen>
    with TickerProviderStateMixin {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          // overflow: Overflow.visible,
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
              top: 100.0,
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width ,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text('ADD YOUR PARKING AREA',textScaleFactor: 1,style: TextStyle(
                          color: Colors.white,

                      ),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.19),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [

                    TabBar(
                      labelPadding: EdgeInsets.all(15),
                      labelStyle: TextStyle(color: Colors.red),
                      labelColor: Colors.red,
                      indicatorColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ))),
                      controller: _tabController,
                      tabs: [
                        Text(
                          'DETAILS',
                          style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'SPACES',
                          style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'LOCATION',
                          style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ATTENDANTS',
                          style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(
                      // height: 600.0,
                      // width: double.infinity,
                      // color: Color.fromRGBO(222, 222, 222, 1),
                      child: TabBarView(

                        controller: _tabController,
                        children: [
                          AddLotDetailsTab(),
                          AddLotSpacesScreen(),
                          AddLotLocationScreen(),
                          AddLotAttendantScreen(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
