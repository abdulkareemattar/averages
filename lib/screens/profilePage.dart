import 'package:flutter/material.dart';

import '../CONSTS/CONSTS.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              K_MainColor, // لون الخلفية العلوي
              K_MainColorLight, // لون الخلفية السفلي
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // صورة الطالب
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: K_MainColorLight, // خلفية الصورة
                    child: CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage('assets/images/student.png'),
                    ),
                  ),
                  // دائرة بيضاء صغيرة لخلق تأثير
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.edit,
                      color: K_MainColor,
                      size: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // اسم الطالب
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // لون النص
                ),
              ),
              SizedBox(height: 10),
              // المعدل التراكمي
              Text(
                'GPA: 3.8',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              // ترتيب الطالب
              Text(
                'Rank: 5th',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              // قائمة بالمواد الدراسية
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: K_MainColorLight, // لون خلفية القائمة
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: 5, // Replace with the number of subjects
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          'Subject ${index + 1}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Text(
                          'Grade: A',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
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