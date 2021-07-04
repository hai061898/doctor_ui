import 'package:doctor/pages/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopRateDoc extends StatelessWidget {
  const TopRateDoc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            topRate(
              "assets/dr_1.png",
              "Dr. Fred Mask",
              "Heart surgen",
              "4.1",
              "",
            ),
            topRate(
              "assets/dr_2.png",
              "Dr. Stella Kane",
              "Bone Specialist",
              "4.2",
              "",
            ),
            topRate(
              "assets/dr_3.png",
              "Dr. Zac Wolff",
              "Eyes Specialist",
              "4.4",
              "",
            ),
            topRate(
                "assets/dr_2.png", "Dr. Fred Mask", "Heart surgen", "4.3", ""),
          ],
        ),
      ),
    );
  }

  Widget topRate(String img, String name, String speciality, String rating,
      String distance) {
    return GestureDetector(
      onTap: () => Get.to(DetailScreen()),
      child: Container(
        height: 90,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(img),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Color(0xffababab),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 3, left: Get.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}