import 'package:bhagavat_gita/colors.dart';
import 'package:bhagavat_gita/data1.dart';
import 'package:bhagavat_gita/data2.dart';
import 'package:bhagavat_gita/data3.dart';
import 'package:bhagavat_gita/data4.dart';
import 'package:bhagavat_gita/data5.dart';
import 'package:bhagavat_gita/data6.dart';
import 'package:bhagavat_gita/data7.dart';
import 'package:bhagavat_gita/detailspage.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Languages extends StatefulWidget {
  // String category = Get.arguments;
  Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List items = [];
  List languages = [
    "Bhagavad Gita",
    "ભગવદ ગીતા",
    "भागवद गीता",
    "भगवद्गीता",
    "ഭഗവദ്ഗീത",
    "ਭਗਵਦ ਗੀਤਾ",
    "ಭಗವದ್ಗೀತೆ"
  ];
  int selectedIndex = Get.arguments ?? 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch (selectedIndex) {
      case 0:
        items = english;
        break;
      case 1:
        items = gujarati;
        break;
      case 2:
        items = hindi;
        break;
      case 3:
        items = marathi;
        break;
      case 4:
        items = malayalam;
        break;
      case 5:
        items = punjabi;
        break;
      case 6:
        items = kannada;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          languages[selectedIndex],
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     color: AppColors.primaryColor,
        //   ),
        // ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Icon(
          //       Icons.arrow_back_ios,
          //       color: AppColors.primaryColor,
          //     ),
          //     Text(Get.arguments ?? ""),
          //   ],
          // )
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(DetailsPage(), arguments: [items, index]);
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/img1.png"),
                        title: Text(items[index]["name"] ?? ""),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
