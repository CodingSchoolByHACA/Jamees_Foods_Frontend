import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jammes_food/controller/provider/sidebar_provider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 120.w, top: 30.h),
                  child: SizedBox(
                    width: 400.w, // Responsive width
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 192, 191, 191),
                          fontSize: 14.sp, // Responsive font size
                        ),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10.r), // Responsive radius
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(9.r), // Responsive radius
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 60.w), // Responsive spacing
              Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: SizedBox(
                  height: 64.h, // Responsive height
                  child: Image.asset('asset/image/logo.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h), // Responsive spacing
          Text(
            "Hi, Nazel Good Morning !",
            style: TextStyle(
              fontSize: 22.sp, // Responsive font size
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: () {
              Provider.of<UserSidebarProvider>(context, listen: false).switchTab(1);
            },
            child: Container(
              height: 100.h, // Responsive height
              width: 305.w, // Responsive width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r), // Responsive radius
                border: Border.all(width: 0.1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5.r, // Responsive blur radius
                    offset: Offset(0, 4.h), // Responsive offset
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Responsive spacing
                    Center(
                        child: Text(
                      "Create Store",
                      style: TextStyle(
                        fontSize: 20.sp, // Responsive font size
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    SizedBox(width: 70.w), // Responsive spacing
                    Icon(
                      Icons.add_outlined,
                      size: 20.sp, // Responsive icon size
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h), // Responsive spacing
          Expanded(
            child: SizedBox(
              width: 500.w, // Responsive width
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w, // Responsive spacing
                  mainAxisSpacing: 20.h, // Responsive spacing
                  childAspectRatio: 12 / 6,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 90.h, // Responsive height
                    width: 270.w, // Responsive width
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10.r), // Responsive radius
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5.r, // Responsive blur radius
                          offset: Offset(0, 4.h), // Responsive offset
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 41.28.h, // Responsive height
                            width: 64.56.w, // Responsive width
                            child: Image.asset('asset/image/logo.png'),
                          ),
                          SizedBox(width: 20.w), // Responsive spacing
                          Text(
                            "XYZ Supermarket, \nMG Road",
                            style: TextStyle(
                              fontSize: 14.sp, // Responsive font size
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
