import 'package:flutter/material.dart';
import 'package:jammes_food/controller/admin_provider/store_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Storelistpage extends StatelessWidget {
  const Storelistpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectedStoreProvider(),
      child:
          Consumer<SelectedStoreProvider>(builder: (context, provider, child) {
        final store = provider.selectedStore;
        return Scaffold(
          backgroundColor: const Color(0xFFF7F7F7),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 12.h),
                      child: Text(
                        'Stores List',
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                provider.selectedStore == null
                    ? Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 16.h,
                              crossAxisSpacing: 16.w,
                              childAspectRatio: 2,
                            ),
                            itemCount: stores.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Provider.of<SelectedStoreProvider>(context,
                                          listen: false)
                                      .selectStore(stores[index]);
                                },
                                child: StorCard(
                                  store: stores[index],
                                  isSelected:
                                      provider.selectedStore == stores[index],
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    : Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 10.h,
                                          crossAxisSpacing: 10.w,
                                          childAspectRatio: 2,
                                        ),
                                        itemCount: stores.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              Provider.of<SelectedStoreProvider>(
                                                      context,
                                                      listen: false)
                                                  .selectStore(stores[index]);
                                            },
                                            child: StorCard(
                                              store: stores[index],
                                              isSelected:
                                                  provider.selectedStore ==
                                                      stores[index],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: provider.selectedStore == null
                                  ? Center(
                                      child: Text(
                                        'Select a store to view details',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                    )
                                  : StoreDetails(store: store!),
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class StorCard extends StatelessWidget {
  final Store store;
  final bool isSelected;

  const StorCard({required this.store, super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected
          ? const Color.fromARGB(255, 194, 192, 192)
          : Colors.white, // Highlight selected card
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Row(
          children: [
            SizedBox(
              height: 90.h,
              child: Image.asset(
                "asset/image/store.png",
                height: 70.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    store.name,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '📍 ${store.location}',
                    style: TextStyle(fontSize: 12.sp, color: Colors.black),
                  ),
                  Text(
                    'Last Checked-In ${store.lastCheckedIn}',
                    style: TextStyle(
                        fontSize: 9.sp,
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
  }
}

class StoreDetails extends StatelessWidget {
  final Store store;

  const StoreDetails({required this.store, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w, right: 16.w),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15.r,
              spreadRadius: 6.r,
              offset: Offset(0, 4.h),
            ),
          ],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 100.w,
                height: 200.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 3.r,
                        spreadRadius: 3.r,
                        offset: Offset(0, 0),
                      )
                    ]),
                child: Center(
                  child: Image.asset(
                    "asset/image/store.png",
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Center(
              child: Text(
                store.name,
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8.h),
            Center(
                child: Row(
              children: [
                Expanded(
                  child: Text('Location:', style: TextStyle(fontSize: 14.sp)),
                ),
                Expanded(
                  child: Text('${store.location}',
                      style: TextStyle(fontSize: 14.sp)),
                ),
              ],
            )),
            Center(
                child: Row(
              children: [
                Expanded(
                  child: Text('Last Checked-In:',
                      style: TextStyle(fontSize: 14.sp)),
                ),
                Expanded(
                  child: Text('${store.lastCheckedIn}',
                      style: TextStyle(fontSize: 14.sp)),
                ),
              ],
            )),
            Center(
                child: Row(
              children: [
                Expanded(
                  child: Text('Amount Collected:',
                      style: TextStyle(fontSize: 14.sp)),
                ),
                Expanded(
                  child: Text('${store.amountCollected}',
                      style: TextStyle(fontSize: 14.sp)),
                ),
              ],
            )),
            Center(
                child: Row(
              children: [
                Expanded(
                  child:
                      Text('Phone Number:', style: TextStyle(fontSize: 14.sp)),
                ),
                Expanded(
                    child: Text('${store.phoneNumber}',
                        style: TextStyle(fontSize: 14.sp))),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
