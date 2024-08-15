import 'package:flutter/material.dart';
import 'package:untitled3/CONSTS/CONSTS.dart';
import 'package:untitled3/screens/averagesPage.dart';
import 'package:untitled3/screens/GradesPage.dart';
import 'package:untitled3/screens/profilePage.dart';
import 'package:untitled3/screens/testPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> _screens = [
  TestPage(),
  Averagespage(),
  Profilepage(
  )
];
int _currentIndex = 0;
PageController _pageController = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenwidth = screenSize.width;
    final screenheight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: K_MainColor,
        centerTitle: true,
        title: Text(
          pages[_currentIndex],
          style: TextStyle(
            fontFamily: 'ANTQUAB',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: (value) => setState(
          () {
            _currentIndex = value;
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: K_MainColor,
        mouseCursor: MouseCursor.uncontrolled,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 30,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        currentIndex: _currentIndex,
        onTap: (value) => _pageController.jumpToPage(value),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.grade), label: 'Grades'),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_rounded), label: 'Averages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
