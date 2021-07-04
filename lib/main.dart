import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor',
      theme: ThemeData(  
        primaryColor: Color(0xff053F5E),
      ),
      home: HomeScreen(),
    );
  }
}