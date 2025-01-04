import 'package:flutter/material.dart';

void main() {
  runApp(StudentApp());
}

class Student {
  final String firstName;
  final String lastName;
  final String studentId;
  final String gender;
  final String imageUrl;

  Student({
    required this.firstName,
    required this.lastName,
    required this.studentId,
    required this.gender,
    required this.imageUrl,
  });
}

class StudentApp extends StatelessWidget {
  // ข้อมูลนักศึกษา
  final List<Student> students = [
    Student(
      firstName: 'Phiriyakorn',
      lastName: 'PhanPhanich',
      studentId: 'ID-10001', 
      gender: 'male',
      imageUrl: 'assets/Phiriyakorn.jpg', 
    ),
    Student(
      firstName: 'ramin',
      lastName: 'kaiyabut',
      studentId: 'ID-10002', 
      gender: 'female',
      imageUrl: 'assets/ramin.jpg', 
    ),
    Student(
      firstName: 'Thanachok',
      lastName: 'suwan',
      studentId: 'ID-10003', 
      gender: 'male',
      imageUrl: 'assets/Thanachok.jpg', 
    ),
    Student(
      firstName: 'จันทิมา',
      lastName: 'พรมวัง',
      studentId: 'ID-10004',
      gender: 'female',
      imageUrl: 'assets/Chanthima.jpg', 
    ),
    Student(
      firstName: 'worachit',
      lastName: 'thonglert',
      studentId: 'ID-10005', 
      gender: 'male',
      imageUrl: 'assets/worachit.jpg', 
    ),
    Student(
      firstName: 'ชฎาพร',
      lastName: 'พินิจสัย',
      studentId: 'ID-10006', 
      gender: 'female',
      imageUrl: 'assets/Chadaporn.jpg', 
    ),
    Student(
      firstName: 'อัครวิชญ์',
      lastName: 'พบวงษา',
      studentId: 'ID-10007', 
      gender: 'male',
      imageUrl: 'assets/Akkaravich.jpg', 
    ),
    Student(
      firstName: 'อรปรียา',
      lastName: 'จันทะโคตร',
      studentId: 'ID-10008', 
      gender: 'female',
      imageUrl: 'assets/ornpreya.jpg', 
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(students: students),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Student> students;

  HomePage({required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student List')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(student: student)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: student.gender == 'male' ? Colors.blue[100] : Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(student.imageUrl),
                    radius: 40,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${student.firstName} ${student.lastName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('ID: ${student.studentId}', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Student student;

  DetailPage({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(student.imageUrl),
              radius: 80,
            ),
            SizedBox(height: 16),
            Text('${student.firstName} ${student.lastName}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Student ID: ${student.studentId}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: student.gender == 'male' ? Colors.blue[100] : Colors.orange[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Gender: ${student.gender}', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
