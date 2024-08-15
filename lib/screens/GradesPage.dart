import 'package:flutter/material.dart';
import 'package:untitled3/CONSTS/CONSTS.dart';

List<String> subjects = [
  "Analysis 3",
  "Analysis 4",
  "English 4",
  "English 3",
  "Electronics Circuits",
  "Logic Circuits",
  "Algorithms 1",
  "Programming 3",
  "Numerical Analysis 1",
  "Communication Skills",
  "Statistics",
  "Probability",
  "Mathematical Programming",
  "Numerical Analysis 2"
];

List<String> pages = ['Grades Page', 'Averages Page', 'Profile Page'];

class GradesPage extends StatelessWidget {
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 14, // عدد العناصر
          itemBuilder: (context, index) {
            // تحديد اللون بناءً على موقع العنصر
            Color color = (index ~/ 2) % 2 == 0
                ? (index % 2 == 0 ? K_SeconderyColor : K_MainColorLight)
                : (index % 2 == 0 ? K_MainColorLight : K_SeconderyColor);

            return Card(
                color: color,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          subjects[index],
                          style: TextStyle(
                              wordSpacing: 4,
                              fontSize: 15.0,
                              overflow: TextOverflow.visible,
                              color: Colors.black87,
                              fontFamily: 'ANTQUAB'),
                        ),
                      ),
                      Text(
                        '72',
                        style: TextStyle(
                            overflow: TextOverflow.visible,
                            wordSpacing: 5,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontFamily: 'ANTQUAB'),
                      ),
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
