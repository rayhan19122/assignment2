import 'package:flutter/material.dart';
import 'package:assignment2_on_flutter/widgets/courses.dart';

class Code extends StatelessWidget{
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> courses = [
      {
        'name': 'Full Stack Web Development with JavaScript (MERN) & AI',
        'img': 'https://cdn.ostad.app/course/cover/2025-12-08T14-25-01.527Z-Course-Thumbnail-12.jpg',
        'batch': 10,
        'seats': 5,
        'days': 21,
      },
      {
        'name': 'App Development with Flutter & AI',
        'img': 'https://cdn.ostad.app/course/photo/2025-12-08T14-27-28.969Z-Flutter-Thumbnail.jpg',
        'batch': 17,
        'seats': 15,
        'days': 2,
      },
      {
        'name': 'SQA: Manual & Automation Testing',
        'img': 'https://cdn.ostad.app/course/photo/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg',
        'batch': 5,
        'seats': 20,
        'days': 19,
      },
      {
        'name': 'Mastering DevOps: From Fundamentals to Advanced Practices',
        'img': 'https://cdn.ostad.app/course/photo/2025-01-23T12-32-14.452Z-Untitled-1%20(1)%20(1).jpg',
        'batch': 11,
        'seats': 15,
        'days': 20,
      },
      {
        'name': 'Full Stack Web Development with PHP, Laravel, Vue Js & AI',
        'img': 'https://cdn.ostad.app/course/photo/2024-12-23T06-07-44.087Z-Course%20Thumbnail%2016.jpg',
        'batch': 13,
        'seats': 11,
        'days': 10,
      },
      {
        'name': 'Full Stack Web Development with Python, Django, React & AI',
        'img': 'https://cdn.ostad.app/course/photo/2025-12-08T14-31-25.696Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg',
        'batch': 10,
        'seats': 5,
        'days': 21,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFD41D),
        title: Text(
          'Digital Ostad',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          // padding: EdgeInsets.all(0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index){
            return Course(text: courses[index]['name'], image: courses[index]['img'], batch: courses[index]['batch'], seats: courses[index]['seats'], days: courses[index]['days']);
          },
        ),
      ),
    );
  }

}