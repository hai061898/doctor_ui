import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: 25, left: 20,right: 20),
      width: Get.width,
      height: 60,
      decoration: BoxDecoration(  
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color:  Color(0x14000000),
            offset: Offset(0,10),
            blurRadius: 15,
            
          ),
        ],
        
      ),
      child: Row(  
        children: [
          Expanded(
            flex: 6,
            child: Container(  
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(  
                maxLines: 1,
                autofocus: false,
                style:  TextStyle(color: Color(0xff107163), fontSize: 20),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search..',
                  ),
                  cursorColor: Color(0xff107163),

              ),
            ),
          ),
           Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff107163),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
