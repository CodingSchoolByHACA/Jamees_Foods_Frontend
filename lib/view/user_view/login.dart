import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jammes_food/view/admin_view/sidebar.dart';
import 'package:jammes_food/view/user_view/sidemenu.dart';
import 'package:jammes_food/view/user_view/signup.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              width: 580.w, // Same width, scaled responsively
              height: 800.h, // Same height, scaled responsively
              padding: EdgeInsets.all(24.w), // Padding responsive
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(65.r), // Border Radius responsive
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 18.r, // Shadow blur scaled
                    offset: Offset(0, 10.h), // Offset scaled
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.h),
                  Image.asset(
                    'asset/image/logo.png',
                    height: 70.h, // Logo height scaled
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(right: 245.w),
                    child: Text(
                      'Login here',
                      style: TextStyle(
                        fontSize: 20.sp, // Font size scaled
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 343.w, // Input field width scaled
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              12.r), // Border radius scaled
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter user name';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 28.h),
                  SizedBox(
                    width: 343.w, // Input field width scaled
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 225.w), // Padding scaled
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AdminSidebarWithTabView()));
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp, // Font size scaled
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 80.h, // Button height scaled
                    width: 343.w, // Button width scaled
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SidebarWithTabView(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 209, 20, 6),
                        minimumSize: Size(double.infinity, 60.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp, // Font size scaled
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14.sp, // Font size scaled
                          color: Colors.black87,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign-up',
                          style: TextStyle(
                            color: Color.fromARGB(255, 209, 20, 6),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp, // Font size scaled
                          ),
                        ),
                      ),
                    ],
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
