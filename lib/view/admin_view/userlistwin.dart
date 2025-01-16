import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jammes_food/view/admin_view/usercart.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UserList',
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                "asset/image/logo.png",
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 16.w,
                          crossAxisSpacing: 16.h,
                          childAspectRatio: 2,
                        ),
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return const UserListWin();
                        },
                      ),
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

class UserListWin extends StatelessWidget {
  const UserListWin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserCard(),
            ));
      },
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 60.r,
                child: Image.asset('asset/image/user.jpg'),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sales Executive',
                      style: TextStyle(fontSize: 12.sp, color: Colors.black),
                    ),
                    Text(
                      'Details',
                      style: TextStyle(fontSize: 12.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
