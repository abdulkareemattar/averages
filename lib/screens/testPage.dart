import 'package:flutter/material.dart';

import '../CONSTS/CONSTS.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              K_MainColor,
              K_MainColorLight,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // اسم الطالب
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              // معلومات مختصرة
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GPA: 3.8',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Rank: 5th',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // زر عرض المزيد
                  ElevatedButton(
                    onPressed: () {}, // أضف الدالة المطلوبة
                    style: ElevatedButton.styleFrom(
                      backgroundColor: K_SeconderyColor,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('View More'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // معلومات تفصيلية
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: K_MainColorLight,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // عنوان القسم
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 15),
                      // مربعات معلومات
                      Expanded(
                        child: GridView.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: [
                            // عنصر "الدرجات"
                            Container(
                              decoration: BoxDecoration(
                                color: K_SeconderyColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.school,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Grades',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // عنصر "الجدول"
                            Container(
                              decoration: BoxDecoration(
                                color: K_SeconderyColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Schedule',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // عنصر "الاخبار"
                            Container(
                              decoration: BoxDecoration(
                                color: K_SeconderyColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.newspaper,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'News',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // عنصر "المزيد"
                            Container(
                              decoration: BoxDecoration(
                                color: K_SeconderyColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.more_vert,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'More',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}