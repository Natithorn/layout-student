import 'package:flutter/material.dart';

void main() {
  runApp(StudentApp());
}

enum Gender { male, female }

class Student {
  final String Name;
  final String studentId;
  final Gender gender;
  final String imageUrl;

  Student({
    required this.Name,
    required this.studentId,
    required this.gender,
    required this.imageUrl,
  });
}

class StudentApp extends StatelessWidget {
  final List<Student> students = [
    Student(
        Name: "นายจารุวิทย์ แสงแก้วสิริกุล", //
        studentId: "653450086-7",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นายชวกร เนืองภา",
        studentId: "653450087-5",
        imageUrl: "assets/imageUrls/P.jpg",
        gender: Gender.male),
    Student(
        Name: "นายณัฐดนัย ภาคภูมิ", //
        studentId: "653450088-3	",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นางสาวณัฐวรรณ พวงมะลัย",
        studentId: "653450089-1",
        imageUrl: "assets/imageUrls/Puu.JPG",
        gender: Gender.female),
    Student(
        Name: "นายถิรวัฒน์ โชติธนกิจไพศาล",
        studentId: "653450090-6",
        imageUrl: "assets/imageUrls/Tin.jpg",
        gender: Gender.male),
    Student(
        Name: "นายเทพฤทธิ์ อินทรประพันธ์",
        studentId: "653450091-4",
        imageUrl: "assets/imageUrls/Big.jpg",
        gender: Gender.male),
    Student(
        Name: "นายธนาพร ชนิดกุล",
        studentId: "653450092-2",
        imageUrl: "assets/imageUrls/thanaporn.jpg",
        gender: Gender.male),
    Student(
        Name: "นายนันทิพัฒน์ บุตรวัง",
        studentId: "653450094-8",
        imageUrl: "assets/imageUrls/Net.jpg",
        gender: Gender.male),
    Student(
        Name: "นายพิชชากร สกุลไทย", //
        studentId: "653450095-6",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นายพิชัย ทองอาสา",
        studentId: "653450096-4",
        imageUrl: "assets/imageUrls/Ta.jpg",
        gender: Gender.male),
    Student(
        Name: "นายพิพิธธน พิพิธกุล",
        studentId: "653450097-2",
        imageUrl: "assets/imageUrls/fork.jpg",
        gender: Gender.male),
    Student(
        Name: "นายพิริยกร พันธุ์พานิชย์",
        studentId: "653450098-0",
        imageUrl: "assets/imageUrls/PP.jpg",
        gender: Gender.male),
    Student(
        Name: "นายภานุวัฒน์ ธรรมบุตร",
        studentId: "653450099-8",
        imageUrl: "assets/imageUrls/Nu.jpg",
        gender: Gender.male),
    Student(
        Name: "นายเมธากร สิงห์คาน",
        studentId: "653450100-9",
        imageUrl: "assets/imageUrls/Zack.jpg",
        gender: Gender.male),
    Student(
        Name: "นายวงศธร ทองอินทร์",
        studentId: "653450101-7",
        imageUrl: "assets/imageUrls/wongsaton.jpeg",
        gender: Gender.male),
    Student(
        Name: "นายวิชญ์พล ยืนยง",
        studentId: "653450103-3",
        imageUrl: "assets/imageUrls/wichcapon.JPG",
        gender: Gender.male),
    Student(
        Name: "นางสาวศานต์ฤทัย สายบุตร",
        studentId: "653450104-1",
        imageUrl: "assets/imageUrls/Noey.JPG",
        gender: Gender.female),
    Student(
        Name: "นายอนิวัตติ์ ณ หนองคาย",
        studentId: "653450106-7",
        imageUrl: "assets/imageUrls/Mix.jpg",
        gender: Gender.male),
    Student(
        Name: "นางสาวอรปรียา จันทะโคตร",
        studentId: "653450107-5",
        imageUrl: "assets/imageUrls/Mo.jpg",
        gender: Gender.female),
    Student(
        Name: "นายอัครวิชญ์ พบวงษา",
        studentId: "653450108-3",
        imageUrl: "assets/imageUrls/Ice.jpg",
        gender: Gender.male),
    Student(
        Name: "นายกฤตชวกร ชวลิตกิตติวงศ์",
        studentId: "653450279-6",
        imageUrl: "assets/imageUrls/Pu.png",
        gender: Gender.male),
    Student(
        Name: "นางสาวจันทิมา พรมวัง",
        studentId: "653450280-1",
        imageUrl: "assets/imageUrls/Piano.jpg",
        gender: Gender.female),
    Student(
        Name: "นางสาวชฎาพร พินิจสัย",
        studentId: "653450281-9",
        imageUrl: "assets/imageUrls/mind.jpg",
        gender: Gender.female),
    Student(
        Name: "นายณภัทร สุยังกุล",
        studentId: "653450282-7",
        imageUrl: "assets/imageUrls/Pun.jpg",
        gender: Gender.male),
    Student(
        Name: "นายณัฏฐกิตติ์ มิตรสูงเนิน",
        studentId: "653450283-5",
        imageUrl: "assets/imageUrls/Terk.jpg",
        gender: Gender.male),
    Student(
        Name: "นางสาวณัฐณิชา พรมปิก",
        studentId: "653450284-3",
        imageUrl: "assets/imageUrls/Bam.JPG",
        gender: Gender.female),
    Student(
        Name: "นายธนกร สว่างสูงเนิน",
        studentId: "653450285-1",
        imageUrl: "assets/imageUrls/korn.JPG",
        gender: Gender.male),
    Student(
        Name: "นางสาวธนพร รัตนศิระประภา",
        studentId: "653450286-9",
        imageUrl: "assets/imageUrls/Icecy.jpg",
        gender: Gender.female),
    Student(
        Name: "นายธนาโชค สุวรรณ์",
        studentId: "653450287-7",
        imageUrl: "assets/imageUrls/Boss.jpg",
        gender: Gender.male),
    Student(
        Name: "นายธีร ริ้วทวี",
        studentId: "653450288-5",
        imageUrl: "assets/imageUrls/Peach.jpg",
        gender: Gender.male),
    Student(
        Name: "นายนภสินธุ์ ศรีบุรินทร์",
        studentId: "653450290-8",
        imageUrl: "assets/imageUrls/Not.jpg",
        gender: Gender.male),
    Student(
        Name: "นายนันธวัฒน์ แผ่ความดี",
        studentId: "653450291-6",
        imageUrl: "assets/imageUrls/Gus.jpg",
        gender: Gender.male),
    Student(
        Name: "นายเนติธร ศรีมี",
        studentId: "653450292-4",
        imageUrl: "assets/imageUrls/Ger.jpg",
        gender: Gender.male),
    Student(
        Name: "นายปฏิพัทธ์ มาตรา",
        studentId: "653450293-2",
        imageUrl: "assets/imageUrls/palm.jpg",
        gender: Gender.male),
    Student(
        Name: "นายประจักษ์ ศรีทอง",
        studentId: "653450294-0",
        imageUrl: "assets/imageUrls/prajak.jpg",
        gender: Gender.male),
    Student(
        Name: "นายภานุวัฒน์ สารวงษ์",
        studentId: "653450295-8",
        imageUrl: "assets/imageUrls/Panu.jpg",
        gender: Gender.male),
    Student(
        Name: "นายมหัคฆพันธ์ ปลั่งกลาง", //
        studentId: "653450296-6",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นางสาวรามิล ไกยบุตร",
        studentId: "653450297-4",
        imageUrl: "assets/imageUrls/Min.jpg",
        gender: Gender.female),
    Student(
        Name: "นายวรชิต ทองเลิศ",
        studentId: "653450298-2",
        imageUrl: "assets/imageUrls/dung.jpg",
        gender: Gender.male),
    Student(
        Name: "นายวรโชติ ทองเลิศ",
        studentId: "653450299-0",
        imageUrl: "assets/imageUrls/dom.jpg",
        gender: Gender.male),
    Student(
        Name: "นายฮารูณ ซิดดิ๊ก คูเรซิ",
        studentId: "653450300-1",
        imageUrl: "assets/imageUrls/Haroon.jpg",
        gender: Gender.male),
    Student(
        Name: "นายชาคริต พูลพิพิธ", //
        studentId: "653450507-9",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นายณภัทร สีหะวงค์", //ฟิโก้
        studentId: "653450508-7",
        imageUrl: "assets/imageUrls/kkulogo.png",
        gender: Gender.male),
    Student(
        Name: "นายทวีศิลป์ ใจดี",
        studentId: "653450509-5",
        imageUrl: "assets/imageUrls/Plem.jpg",
        gender: Gender.male),
    Student(
        Name: "นายนันทวัฒน์ แซ่ฮวม",
        studentId: "653450510-0",
        imageUrl: "assets/imageUrls/Mungkorn.jpg",
        gender: Gender.male),
    Student(
        Name: "นางสาวศิริพร แก้วลินลา",
        studentId: "653450513-4",
        imageUrl: "assets/imageUrls/tal.png",
        gender: Gender.female),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(title: const Text('Student List')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(student: student)),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: student.gender == Gender.male
                    ? Colors.blue[100]
                    : Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(student.imageUrl),
                    radius: 40,
                    onBackgroundImageError: (_, __) => const Icon(Icons.error),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${student.Name}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('ID: ${student.studentId}',
                          style: const TextStyle(fontSize: 16)),
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
      appBar: AppBar(title: const Text('Student Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(student.imageUrl),
              radius: 80,
              onBackgroundImageError: (_, __) => const Icon(Icons.error),
            ),
            const SizedBox(height: 16),
            Text('${student.Name}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Student ID: ${student.studentId}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: student.gender == Gender.male
                    ? Colors.blue[100]
                    : Colors.orange[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Gender: ${student.gender == Gender.male ? "Male" : "Female"}',
                  style: const TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
