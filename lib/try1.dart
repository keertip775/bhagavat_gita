import 'package:flutter/material.dart';

class Try1 extends StatefulWidget {
  Try1({super.key});

  @override
  State<Try1> createState() => _Try1State();
}

class _Try1State extends State<Try1> {
  int selectedindex = 0;

  void navigatebottombar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: navigatebottombar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: "message"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "search"),
          ]),
//       // extendBody: true,
//       // extendBodyBehindAppBar: true,
//       backgroundColor: Colors.blue,
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             snap: false,
//             foregroundColor: Colors.yellow,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Container(
//                 color: Colors.pink,
//               ),
//               title: Text("SILVER APPBAR"),
//             ),
//             // backgroundColor: Colors.blue,
//             expandedHeight: 200,
//             leading: Icon(Icons.menu),
//             title: Text("SILVER APPBAR"),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(
//                   30,
//                 ),
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(
//                   30,
//                 ),
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(
//                   30,
//                 ),
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(
//                   30,
//                 ),
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
    );
  }
}
