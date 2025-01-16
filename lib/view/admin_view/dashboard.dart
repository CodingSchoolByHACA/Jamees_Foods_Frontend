import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar with Logo
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 200.w),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w), // Add spacing
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'asset/image/logo.png',
                        height: 80.h,
                        width: 80.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: SizedBox(
                    width: 800.w,
                    height: 770.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hi, Nazel Good Morning !  ',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40.w),
                              child: const SectionTitle(
                                title: 'STORES',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.w, right: 40.w),
                              child: SizedBox(
                                height: 250.h,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(16.w),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Icon or Image Section
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.w),
                                              child: Container(
                                                width: 100.w,
                                                height: 160.h,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 3.r,
                                                      spreadRadius: 2.r,
                                                      offset: Offset(0, 0),
                                                    ),
                                                  ],
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'asset/image/storesmall.png'), // Load image from path
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 12.w),

                                        // Text Content Section
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Jamees Foods',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w),
                                                    child: const Icon(
                                                        Icons.location_on),
                                                  ),
                                                  Text(
                                                    'Thamarassery',
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 0, 0, 0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Vertical Divider
                                        Padding(
                                          padding: EdgeInsets.only(right: 90.w),
                                          child: const VerticalDivider(
                                            thickness: 1,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),

                                        // Total Section
                                        Padding(
                                          padding: EdgeInsets.only(right: 80.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Total Stores',
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.grey[700]),
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                '20',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40.w),
                              child: SectionTitle(
                                title: 'USER',
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Padding(
                              padding: EdgeInsets.only(left: 40.w, right: 40.w),
                              child: SizedBox(
                                  height: 300.h,
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(16.w),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Icon or Image Section
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.w),
                                                child: Container(
                                                  width: 100.w,
                                                  height: 150.h,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black26,
                                                        blurRadius: 3.r,
                                                        spreadRadius: 2.r,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                    image:
                                                        const DecorationImage(
                                                      scale: 20,
                                                      image: AssetImage(
                                                        'asset/image/rect.png',
                                                      ), // Load image from path
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 15.w),

                                          // Text Content Section
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Jamees Foods',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 55.w,
                                                    ),
                                                    Text(
                                                      'Sales Executive',
                                                      style: TextStyle(
                                                        fontSize: 13.sp,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 0, 0, 0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          // Vertical Divider
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 90.w),
                                            child: const VerticalDivider(
                                              thickness: 1,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),

                                          // Total Section
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 80.w),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Total Users',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.grey[700]),
                                                ),
                                                SizedBox(height: 4.h),
                                                Text(
                                                  '20',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
