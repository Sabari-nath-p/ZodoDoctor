import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';

void main() {
  runApp(ZodoApp());
}

class ZodoApp extends StatelessWidget {
  const ZodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(395, 852),
      child: GetMaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
