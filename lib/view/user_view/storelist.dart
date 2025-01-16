import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jammes_food/view/user_view/storeview.dart';

class StoreListPage extends StatelessWidget {
  const StoreListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w, // Responsive padding
                    vertical: 12.h, // Responsive padding
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.w), // Responsive padding
                        child: Text(
                          'Stores List',
                          style: TextStyle(
                            fontSize: 29.sp, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 20.h), // Responsive spacing
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                          Image.asset(
                            'asset/image/logo.png',
                            width: 60.w, // Responsive width
                            height: 55.h, // Responsive height
                          ),
                          SizedBox(width: 20.w), // Responsive spacing
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h), // Responsive spacing
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w), // Responsive padding
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 16.h, // Responsive spacing
                        crossAxisSpacing: 16.w, // Responsive spacing
                        childAspectRatio: 2, // Keep same aspect ratio
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return const StoreCard();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  const StoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Storeview(),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r), // Responsive radius
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w), // Responsive padding
          child: Row(
            children: [
              Container(
                width: 40.w, // Responsive width
                height: 40.h, // Responsive height
                decoration: const BoxDecoration(),
                child: Image.asset(
                  'asset/image/rect.png',
                  width: 50.w, // Responsive width
                  height: 50.h, // Responsive height
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 10.w), // Responsive spacing
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jamees Foods',
                      style: TextStyle(
                        fontSize: 14.sp, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '📍 Thamarassery',
                      style: TextStyle(
                        fontSize: 10.sp, // Responsive font size
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Last Checked-In Dec 3, 2024',
                      style: TextStyle(
                        fontSize: 10.sp, // Responsive font size
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
    );
  }
}
