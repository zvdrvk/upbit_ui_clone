import 'package:flutter/material.dart';
import 'package:upbit_ui_clone/config/colors.dart';
import 'package:upbit_ui_clone/pages/upbit_first_page.dart';
import 'package:upbit_ui_clone/pages/upbit_second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pageNameList = ["거래소", "코인정보", "투자내역", "입출금", "내정보"];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UpbitColor.deepBlue,
      appBar: AppBar(
        backgroundColor: UpbitColor.deepBlue,
        title: Text(pageNameList[currentIndex]),
        centerTitle: true,
        actions: [
          if (currentIndex == 0)
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined),
            ),
          if (currentIndex == 0 || currentIndex == 1)
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_outlined),
            ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          UpbitFirstPage(),
          UpbitSecondPage(),
          Center(child: Text("2")),
          Center(child: Text("3")),
          Center(child: Text("4")),
          Center(child: Text("5")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: UpbitColor.primary,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 24,
        currentIndex: currentIndex,
        unselectedItemColor: UpbitColor.grey2,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "거래소",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "코인정보",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "투자내역",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.double_arrow_outlined),
            label: "입출금",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "내정보",
          ),
        ],
      ),
    );
  }
}
