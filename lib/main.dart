import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_giolocator/spalsh.dart';
import 'package:new_giolocator/view/home_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "splash",
        routes: {
          '/':(p0) => Location_HomeScreen(),
          'splash':(p0) => SplashScreen()
        },
      ),
    )
  );
}


