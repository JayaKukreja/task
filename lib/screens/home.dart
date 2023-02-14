import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> programs = [];
  List<dynamic> lessons = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  fetchData() async {
    Uri uri =
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs");
    Uri uri1 =
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons");
    var response = await http.get(uri);
    var response1 = await http.get(uri1);
    final json = jsonDecode(response.body);
    final json1 = jsonDecode(response1.body);
    programs = json["items"];
    lessons = json1["items"];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 250.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Programs for you",
                          style: TextStyle(
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18.sp),
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: darkgrey,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: ImageIcon(
                            const AssetImage("assets/images/Iconarrow.png"),
                            color: darkgrey,
                            size: 13.sp,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: programs.length,
                      itemBuilder: (context, index) {
                        final program = programs[index];
                        return Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: Container(
                            width: 222.w,
                            // height: 250.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: lightgrey),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          const Color.fromRGBO(14, 68, 62, .08),
                                      blurRadius: 12.r)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r),
                                  ),
                                  child: Image.asset(
                                    "assets/images/Frame 122.png",
                                    fit: BoxFit.cover,
                                    height: 100.h,
                                    width: 242.w,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 16.h,
                                // ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.w, top: 16.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        program["category"].toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12.sp,
                                            color: kblue),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        program["name"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        "${program["lesson"]} lessons",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            color: darkgrey),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              height: 280.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Events and experiences",
                          style: TextStyle(
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18.sp),
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: darkgrey,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: ImageIcon(
                            const AssetImage("assets/images/Iconarrow.png"),
                            color: darkgrey,
                            size: 13.sp,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: Container(
                            width: 242.w,
                            // height: 250.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: lightgrey),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          const Color.fromRGBO(14, 68, 62, .08),
                                      blurRadius: 12.r)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.r),
                                      topRight: Radius.circular(8.r)),
                                  child: Image.asset(
                                    "assets/images/exercise.png",
                                    fit: BoxFit.cover,
                                    height: 100.h,
                                    width: 242.w,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Babycare".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12.sp,
                                            color: kblue),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        "Understanding of human behaviour",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "13 Feb, Sunday",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color: darkgrey),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 12.w),
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty.all(
                                                            0),
                                                    backgroundColor:
                                                        MaterialStateProperty.all(
                                                            Colors.white),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    18.0),
                                                            side: BorderSide(
                                                                color: kblue))),
                                                    padding: MaterialStateProperty.all(
                                                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h))),
                                                onPressed: () {},
                                                child: Text(
                                                  "Book",
                                                  style: TextStyle(
                                                      color: kblue,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12.sp),
                                                )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Lessons for you",
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18.sp),
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: darkgrey,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: ImageIcon(
                      const AssetImage("assets/images/Iconarrow.png"),
                      color: darkgrey,
                      size: 13.sp,
                    ))
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 255.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: lessons.length,
                itemBuilder: (context, index) {
                  final lesson = lessons[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Container(
                      width: 222.w,
                      // height: 250.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: lightgrey),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromRGBO(14, 68, 62, .08),
                                blurRadius: 12.r)
                          ]),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/exercise.png",
                            // height: 150.h,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lesson["category"].toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      color: kblue),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                SizedBox(
                                  height: 50.h,
                                  child: Text(
                                    lesson["name"],
                                    style: TextStyle(
                                        overflow: TextOverflow.clip,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  "${lesson["duration"]} min",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: darkgrey),
                                )
                              ],
                            ),
                          ),
                          Visibility(
                            visible: lesson["locked"],
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.w),
                              child: const Align(
                                alignment: Alignment.bottomRight,
                                child: ImageIcon(
                                    AssetImage("assets/images/lock.png")),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 24.h,
            )
          ],
        ),
      ),
    );
  }
}
