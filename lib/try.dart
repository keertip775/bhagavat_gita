import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  var textController = TextEditingController();
  var userinput;
  int _selectedindex = 0;
  void navigatebottombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List pages = [
    Center(
      child: Text(
        "homepage",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      ),
    ),
    Center(
      child: Text(
        "messagepage",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      ),
    ),
    Center(
      child: Text(
        "searchpage",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      ),
    ),
    Center(
      child: Text(
        "sharepage",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textinput"),
      ),
      body: pages[_selectedindex],
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       child: Container(
      //           width: 300,
      //           child: TextField(
      //             controller: textController,
      //             decoration: InputDecoration(
      //                 border: OutlineInputBorder(
      //                     borderRadius:
      //                         BorderRadius.all(Radius.elliptical(10.0, 10.0)))),
      //           )),
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     MaterialButton(
      //       color: Colors.blue,
      //       onPressed: () {
      //         userinput = textController.text;
      //       },
      //       child: Text(
      //         "Post",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     )
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.orange,
          selectedIconTheme: IconThemeData(color: Colors.grey),
          currentIndex: _selectedindex,
          onTap: navigatebottombar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: "share",
            ),
          ]),
    );
  }
}
// void main() {
//   {
//     String name = "kiran";
//     int age = 21;
//     bool male = true;
//     List<String> fruits = ["apple", "banana", "grapes"];
//     Map<String, dynamic> mydata = {
//       "name": name,
//       "age": age,
//       "male": male,
//       "fruits": fruits
//     };
//     print(mydata);
//     mydata.containsKey("name");
//   }
// }
