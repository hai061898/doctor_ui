import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xff053F5E),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
