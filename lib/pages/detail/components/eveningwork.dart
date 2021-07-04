import 'package:flutter/material.dart';

class Evening extends StatelessWidget {
  const Evening({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 2.6,
        children: [
          doctime("15:30 PM", true),
          doctime("15:30 PM", false),
          doctime("15:30 PM", false),
          doctime("15:30 PM", false),
          doctime("15:30 PM", false),
          doctime("15:30 PM", false),
        ],
      ),
    );
  }

  Widget doctime(String time, bool isSelected) {
    return isSelected
        ? Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: Color(0xff107163),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  child: Text(
                    '08:30 AM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  child: Text(
                    '08:30 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}