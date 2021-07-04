import 'package:doctor/pages/home/components/category.dart';
import 'package:doctor/pages/home/components/title_torated.dart';
import 'package:flutter/material.dart';


import 'search_box.dart';
import 'tittle_category.dart';
import 'topRate.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Hi ! Doctor Pink',
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 25,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20),
            child: Text(
              "Welcome Back",
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SearchBox(),
          TittleCategory(),
          Category(),
          TittleTopRate(),
          TopRateDoc(),
        ],
      ),
    );
  }
}


