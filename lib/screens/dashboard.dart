import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants.dart';
import 'package:task/screens/chat.dart';
import 'package:task/screens/home.dart';
import 'package:task/screens/hub.dart';
import 'package:task/screens/learn.dart';
import 'package:task/screens/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // const Home({super.key});
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(selectedIndex);
    });
  }

  PageController pageController = PageController();
  int pageSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            iconSize: 20.sp,
            selectedItemColor: kblue,
            showUnselectedLabels: true,
            unselectedItemColor: darkgrey,
            onTap: onItemTapped,
            selectedLabelStyle: TextStyle(
                color: kblue, fontWeight: FontWeight.w600, fontSize: 10.sp),
            unselectedLabelStyle: TextStyle(
                fontSize: 10.sp, color: darkgrey, fontWeight: FontWeight.w500),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  // color: kblue,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/learn.png")),
                  label: "Learn"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hub.png")),
                  label: "Hub"),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/chat.png")),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/profile.png")),
                  label: "Profile")
            ],
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          body: NestedScrollView(
            headerSliverBuilder: (context,innerBoxIsScrolled)=>
            [SliverAppBar(
              primary: false,
              elevation: 0,
              backgroundColor: const Color(0xffeef3fd),
              leading: Icon(
                Icons.short_text,
                color: kgrey
              ),
              actions: [
                Icon(
                  Icons.question_answer_outlined,
                  size: 20.sp,
                  color: kgrey,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.w, left: 10.w),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 20.sp,
                    color: const Color(0xff939CA3),
                  ),
                )
              ],
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(200.h),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 8.h, left: 16.w, right: 16.w, bottom: 32.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Priya!',
                          style: TextStyle(
                              color: const Color(0xff08090a),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Lora'),
                        ),
                        Text(
                          "What do you wanna learn today?",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff6D747A)),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomContainer1(
                                "Programs", "assets/images/Iconbookmark.png"),
                            CustomContainer(Icons.help, "Get help"),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomContainer1(
                                "Learn", "assets/images/Iconopenbook.png"),
                            CustomContainer1(
                                "DD Tracker", "assets/images/track.png"),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
         ],
               body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                pageSelected = value;
              });
            },
            children: const [Home(), Learn(), Hub(), Chat(), Profile()],
          ))
       ),
    );
  }

  Widget CustomContainer(IconData? icon, String text) {
    return Container(
      height: 48.h,
      width: 160.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff598BED)),
          borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: Row(
        children: [
          SizedBox(
            width: 24.w,
          ),
          Icon(
            icon,
            size: 20.sp,
            color: kblue,
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w600, color: kblue, fontSize: 14.sp),
          )
        ],
      ),
    );
  }

  Widget CustomContainer1(String text, String url) {
    return Container(
      height: 48.h,
      width: 160.w,
      decoration: BoxDecoration(
          border: Border.all(color: kblue),
          borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: Row(
        children: [
          SizedBox(
            width: 24.w,
          ),
          ImageIcon(
            AssetImage(url),
            size: 20.sp,
            color: kblue,
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w600, color: kblue, fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}
