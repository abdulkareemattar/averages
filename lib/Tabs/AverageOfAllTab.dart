import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/CONSTS/CONSTS.dart';

class Averageofalltab extends StatelessWidget {
  const Averageofalltab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Card(color: (index<10)?Color(0xffFFD700):(index<30)?Color(0xffC0C0C0):Color(0xffCD7F32),
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: K_MainColor,
            child: Text(
              (index + 1).toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            'اسم الطالب ${index + 1}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'معدل الطالب ${index + 1}',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
      itemCount: 400,
      padding: EdgeInsets.all(10),
    );
  }
}
