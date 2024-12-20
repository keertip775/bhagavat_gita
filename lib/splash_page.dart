import 'package:bhagavat_gita/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(HomePage());
    });
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              "All Language Bhagavad Gita ",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
