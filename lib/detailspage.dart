import 'package:bhagavat_gita/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List listItems = Get.arguments[0] ?? [];
  int selectedIndex = Get.arguments[1] ?? 0;
  @override
  Widget build(BuildContext context) {
    List shloka = listItems[selectedIndex]["shlok"] ?? [];
    List translate = listItems[selectedIndex]["translate"] ?? [];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          listItems[selectedIndex]["name"] ?? "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: ListView.separated(
                padding: EdgeInsets.all(
                  20.0,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(translate[index]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Share.share(translate[index]);
                                          },
                                          icon: Icon(Icons.share)),
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            shloka[index],
                            textAlign: TextAlign.center,
                          ),
                        )),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: shloka.length),
          ),
        ],
      ),
    );
  }
}
