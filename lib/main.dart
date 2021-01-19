import 'package:GetXOnboarding/Views/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:GetXOnboarding/Views/HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Onboarding Using GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => Dashboard()),
      
      ],
    );
  }
}

