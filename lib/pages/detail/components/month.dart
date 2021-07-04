import 'package:flutter/material.dart';

class Month extends StatelessWidget {
  const Month({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          dayonmonth("Mon", "21", true),
          dayonmonth("Tue", "22", false),
          dayonmonth("Wed", "23", false),
          dayonmonth("Thur", "24", false),
          dayonmonth("Fri", "25", false),
          dayonmonth("Sat", "26", false),
          dayonmonth("Sun", "27", false),
          dayonmonth("Mon", "28", false),
        ],
      ),
    );
  }

  Widget dayonmonth(String day, String date, bool isSelected) {
    return isSelected
        ? Container(
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color(0xff107163),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
  }
}