import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TittleCategory extends StatelessWidget {
  const TittleCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Color(0xff5e5d5d),
                  fontSize: 19,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
