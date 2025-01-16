import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Storeview extends StatelessWidget {
  const Storeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 24.sp, // Responsive icon size
          ),
        ),
        title: Text(
          "Jamees Food - Store Data",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.sp, // Responsive font size
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.w), // Responsive padding
            child: Image.asset(
              'asset/image/logo.png',
              width: 60.w, // Responsive width
              height: 55.h, // Responsive height
            ),
          ),
          SizedBox(width: 20.w), // Responsive spacing
        ],
        elevation: 0, // Removes AppBar shadow
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: 736.h, // Responsive height
              width: 468.w, // Responsive width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r), // Responsive radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3.r, // Responsive spread radius
                    blurRadius: 5.r, // Responsive blur radius
                    offset: Offset(0, 1.h), // Responsive offset
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 65.w, // Responsive horizontal padding
                      vertical: 50.h, // Responsive vertical padding
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 230.h, // Responsive height
                          width: 343.w, // Responsive width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                15.r), // Responsive radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3.r,
                                blurRadius: 5.r,
                                offset: Offset(0, 1.h),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 17.w, top: 17.h),
                                    child: Text(
                                      "Jamees Foods",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.w),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 18.sp,
                                        ),
                                        Text(
                                          "Thamarassery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 17.w),
                                    child: Text(
                                      "Store Manager",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 17.w),
                                    child: Text(
                                      "+91 8790 675 895",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 90.w),
                              Container(
                                height: 100.h,
                                width: 100.w,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Image.asset('asset/image/rect.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 343.w,
                    height: 80.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 218, 38, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      child: Text(
                        "Checked in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: 343.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Amount',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                      ),
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: 343.w,
                    height: 80.h,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 16.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              content: Container(
                                width: 319.w,
                                height: 450.h,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: const Color.fromARGB(
                                          255, 94, 246, 99),
                                      size: 70.sp,
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Successful',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "You have successfully entered the data",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                    SizedBox(height: 20.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Amount:",
                                            style: TextStyle(fontSize: 14.sp)),
                                        Text("150000",
                                            style: TextStyle(fontSize: 14.sp)),
                                      ],
                                    ),
                                    Text(
                                      "Checked-In Dec 3,2024 01:00 PM",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    Text(
                                      "Checked-Out Dec 3,2024 01:25 PM",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 50.h, right: 30.w, left: 30.w),
                                  child: SizedBox(
                                    width: 250.w,
                                    height: 80.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 218, 38, 25),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                        ),
                                      ),
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 218, 38, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
