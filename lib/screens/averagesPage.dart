import 'package:flutter/material.dart';
import 'package:untitled3/Tabs/AverageOfAllTab.dart';

import '../CONSTS/CONSTS.dart';

class Averagespage extends StatelessWidget {
  const Averagespage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              text: 'Averages Of Successfull',
              icon: Icon(Icons.done),
            ),
            Tab(
              text: 'Averages Of All',
              icon: Icon(Icons.people),
            ),
          ],
        ),
        body: TabBarView(children: [Averageofalltab(), Averageofalltab()]),
      ),
    );
  }
}
