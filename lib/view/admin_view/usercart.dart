import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Card',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      width: 500.w,
                      height: 220.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 2.h),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 60.r,
                              backgroundImage: const NetworkImage(
                                  "https://static.vecteezy.com/system/resources/thumbnails/036/280/650/small_2x/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg"),
                            ),
                            SizedBox(width: 50.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on),
                                      Text(
                                        ' Thamarassery',
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Sales executive',
                                    style: TextStyle(
                                        fontSize: 13.sp, color: Colors.black),
                                  ),
                                  Text(
                                    ' +91 8714951667',
                                    style: TextStyle(
                                        fontSize: 13.sp, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Container(
                                  width: 160.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Deactivate",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 50.h),
                child: Text(
                  "TODAY",
                  style: TextStyle(fontSize: 30.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.w,
                    mainAxisSpacing: 30.h,
                    childAspectRatio: 2.5,
                  ),
                  itemCount: 14,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 2.h),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                          children: [
                            Image.asset(
                              "asset/image/store.png",
                              width: 40.w,
                              height: 70.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ' Jamees food',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on),
                                      Text(
                                        ' Thamarassery',
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'last checked in- dec-3-2024',
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.black),
                                  ),
                                  Text(
                                    'last checked out- dec-3-2024',
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.black),
                                  ),
                                  Text(
                                    ' Amount - 15000',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
