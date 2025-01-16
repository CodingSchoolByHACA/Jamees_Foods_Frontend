import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:jammes_food/view/user_view/login.dart';

class SignUpProvider extends ChangeNotifier {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isPasswordHidden = true;

  void togglePasswordVisibility() {
    isPasswordHidden = !isPasswordHidden;
    notifyListeners();
  }
}

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpProvider(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: 580.w, // Responsive width
                height: 820.h, // Responsive height
                padding: EdgeInsets.all(24.w), // Responsive padding
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(60.r), // Responsive border radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 16.r, // Responsive blur radius
                      offset: Offset(0, 8.h), // Responsive shadow offset
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Consumer<SignUpProvider>(
                    builder: (context, provider, child) =>
                        SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 20.h),
                          Image.asset(
                            'asset/image/logo.png',
                            height: 70.h, // Responsive image height
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.only(right: 200.w),
                                child: Text(
                                  'Create Account',
                                  style: TextStyle(
                                    fontSize: 20.sp, // Responsive font size
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                width: 343.w, // Responsive width
                                child: TextFormField(
                                  controller: provider.usernameController,
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          12.r), // Responsive border radius
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a username';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                width: 343.w,
                                child: TextFormField(
                                  controller: provider.emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter an email';
                                    } else if (!RegExp(
                                            r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}\$')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                width: 343.w,
                                child: TextFormField(
                                  controller: provider.passwordController,
                                  obscureText: provider.isPasswordHidden,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        provider.isPasswordHidden
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                      onPressed:
                                          provider.togglePasswordVisibility,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a password';
                                    } else if (value.length < 6) {
                                      return 'Password must be at least 6 characters long';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                width: 343.w,
                                child: TextFormField(
                                  controller:
                                      provider.confirmPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please confirm your password';
                                    } else if (value !=
                                        provider.passwordController.text) {
                                      return 'Passwords do not match';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 25.h),
                              SizedBox(
                                height: 70.h,
                                width: 343.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      // Handle successful form submission
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Account created successfully!'),
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 209, 20, 6),
                                    minimumSize: Size(double.infinity, 50.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 17.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'login',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 209, 20, 6),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
