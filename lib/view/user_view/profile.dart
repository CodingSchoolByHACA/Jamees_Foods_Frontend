import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isEditing = false;
  TextEditingController nameController =
      TextEditingController(text: "John Doe");

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
            child: Image.asset('asset/image/logo.png',
                width: 50.w, height: 70.h), // Responsive dimensions
          ),
          SizedBox(width: 20.w), // Responsive spacing
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.sp, // Responsive font size
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50.h), // Responsive spacing
              Container(
                height: 750.h, // Responsive height
                width: 500.w, // Responsive width
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(50.r), // Responsive radius
                  border: Border.all(width: 0.12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.r, // Responsive blur radius
                      offset: Offset(0, 4.h), // Responsive offset
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 80.h), // Responsive spacing
                    CircleAvatar(
                      radius: 110.r, // Responsive radius
                      child: Icon(Icons.person, size: 50.sp), // Responsive size
                    ),
                    SizedBox(height: 40.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 30.h), // Responsive padding
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: isEditing
                                  ? TextField(
                                      controller: nameController,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.sp, // Responsive font size
                                      ),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    )
                                  : Text(
                                      nameController.text,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.sp, // Responsive font size
                                      ),
                                    ),
                            ),
                            IconButton(
                              icon: Icon(
                                isEditing ? Icons.save : Icons.edit,
                                size: 24.sp, // Responsive icon size
                              ),
                              onPressed: () {
                                setState(() {
                                  if (isEditing) {
                                    // Save the name
                                    FocusScope.of(context).unfocus();
                                  }
                                  isEditing = !isEditing;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w), // Responsive padding
                      child: const Divider(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 175.w), // Responsive padding
                      child: Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                          fontSize: 22.sp, // Responsive font size
                          color: const Color.fromRGBO(131, 130, 129, 1),
                        ),
                      ),
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
