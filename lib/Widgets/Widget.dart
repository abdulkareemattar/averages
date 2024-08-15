import 'package:flutter/material.dart';

class SubjectScoreWidget extends StatelessWidget {
  final String subjectName;
  final double score;

  const SubjectScoreWidget({
    Key? key,
    required this.subjectName,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // تغير موضع الظل
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subjectName,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0), // مسافة بين النصين
          Text(
            'الدرجة المحصلة: ${score.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
