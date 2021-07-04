import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'eveningwork.dart';
import 'hearder.dart';
import 'month.dart';
import 'morningwork.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'July 2021',
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Month(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Morning',
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Morning(),
          Container(
            margin: EdgeInsets.only(left: 25, top: 30),
            child: Text(
              'Evening',
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Evening(),
          Container(
            alignment: Alignment.center,
            width: Get.width,
            height: 54,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff107163),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color(0x17000000),
                  offset: Offset(0, 15),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Text(
              'Make An Appointment',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


