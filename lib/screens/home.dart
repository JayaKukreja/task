import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              height: 270.h,
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
                      itemCount: 5,
                      itemBuilder: (context, index) {
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
                                Image.asset(
                                  path[index],
                                  fit: BoxFit.cover,
                                  height: 100.h,
                                  width: 242.w,
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
                                        title[index].toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12.sp,
                                            color: kblue),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        description[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        lessons[index],
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
            SizedBox(
              height: 280.h,
              child: Column(
                children: [
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
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
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
                              children: [
                                Image.asset(
                                  "assets/images/exercise.png",
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
                                      Text(
                                        "3 min",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            color: darkgrey),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.w),
                                  child: const Align(
                                    alignment: Alignment.bottomRight,
                                    child: ImageIcon(
                                        AssetImage("assets/images/lock.png")),
                                  ),
                                )
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
              height: 24.h,
            )
          ],
        ),
      ),
    );
  }
}
