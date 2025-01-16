import 'package:flutter/material.dart';
import 'package:jammes_food/controller/admin_provider/sidebar_provider.dart';
import 'package:jammes_food/controller/provider/sidebar_provider.dart';
import 'package:jammes_food/view/user_view/splash.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserSidebarProvider()),
        ChangeNotifierProvider(create: (_) => AdminSidebarProvider()),

        // Add other providers here
      ],
      child: ScreenUtilInit(
        designSize: const Size(768, 1024), // Set the design size for tablets
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: SplashPage(),
            ),
          );
        },
      ),
    );
  }
}
