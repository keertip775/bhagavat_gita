// import 'package:bhagavat_gita/colors.dart';
// import 'dart:html';

import 'package:bhagavat_gita/colors.dart';
import 'package:bhagavat_gita/languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List languages = [
    "Bhagavad Gita",
    "ભગવદ ગીતા",
    "भागवद गीता",
    "भगवद्गीता",
    "ഭഗവദ്ഗീത",
    "ਭਗਵਦ ਗੀਤਾ",
    "ಭಗವದ್ಗೀತೆ"
  ];

  // get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/splash.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Select Language",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                // DropdownMenu(
                //   enableSearch: true,
                //   onSelected: (value) {
                //     if (value != null) {
                //       print(value);
                //     }
                //   },
                //   dropdownMenuEntries: [
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //     DropdownMenuEntry(
                //       value: "english",
                //       label: "english",
                //     ),
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //     DropdownMenuEntry(
                //       value: "kannada",
                //       label: "kannada",
                //     ),
                //   ],
                // ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 7,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(Languages(), arguments: index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(children: [
                            Container(
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                child: Image.asset(
                                  "assets/images/img3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  color: Colors.orange.withOpacity(0.3)),
                            ),
                            Center(
                              child: Text(
                                languages[index],
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
