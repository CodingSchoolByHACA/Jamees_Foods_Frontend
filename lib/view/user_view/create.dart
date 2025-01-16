import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateStorePage extends StatelessWidget {
  const CreateStorePage({super.key});

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r), // Responsive radius
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle,
                color: const Color.fromARGB(255, 80, 221, 85),
                size: 70.sp, // Responsive icon size
              ),
              SizedBox(height: 15.h), // Responsive spacing
              Text(
                'Successful',
                style: TextStyle(
                  fontSize: 22.sp, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'You have successfully added storename \n to your task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp), // Responsive font size
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 209, 20, 6),
                  padding: EdgeInsets.symmetric(
                    horizontal: 130.w,
                    vertical: 15.h,
                  ), // Responsive padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.r), // Responsive radius
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp), // Responsive font size
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox(width: 0.w), // Responsive width
        actions: [
          Padding(
            padding: EdgeInsets.all(9.w), // Responsive padding
            child: Image.asset(
              'asset/image/logo.png',
              width: 44.w, // Responsive width
              height: 50.h, // Responsive height
            ),
          ),
          SizedBox(width: 20.w),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Create Store",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25.sp, // Responsive font size
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 66.w, right: 66.w), // Responsive padding
                child: Center(
                  child: Container(
                    width: 658.w, // Responsive width
                    height: 650.h, // Responsive height
                    padding: EdgeInsets.all(16.w), // Responsive padding
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(40.r), // Responsive radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          blurRadius: 12.r, // Responsive blur radius
                          offset: Offset(0, 4.h), // Responsive offset
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 60.w, top: 30.h),
                          child: Text(
                            "Store Data",
                            style: TextStyle(
                              fontSize: 22.sp, // Responsive font size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Store Name",
                                    style: TextStyle(
                                      fontSize: 16.sp, // Responsive font size
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3.h), // Responsive spacing
                                  SizedBox(
                                    //  height: 48.h, // Responsive height
                                    width: 343.w, // Responsive width
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.r), // Responsive radius
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16.w), // Responsive spacing
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Number",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  SizedBox(
                                    //  height: 48.h,
                                    width: 343.w,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Area",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  SizedBox(
                                    //   height: 48.h,
                                    width: 343.w,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "EMIRate",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  SizedBox(
                                    // height: 48.h,
                                    width: 343.w,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 65.h),
                        Center(
                          child: SizedBox(
                            // height: 48.h,
                            width: 300.w,
                            child: ElevatedButton(
                              onPressed: () {
                                showSuccessDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 213, 20, 6),
                                padding: EdgeInsets.symmetric(
                                  vertical: 16.h,
                                  horizontal: 70.w,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Text(
                                'Create Store',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
