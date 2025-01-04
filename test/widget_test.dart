
import 'package:flutter_test/flutter_test.dart';
import 'package:layout/main.dart';

void main() {
  testWidgets('Check if student list renders correctly', (WidgetTester tester) async {
    // สร้างแอป StudentApp ขึ้นมา
    await tester.pumpWidget(StudentApp());

    // ตรวจสอบว่ารายชื่อนักศึกษาปรากฏขึ้น
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Jane Smith'), findsOneWidget);

    // ทดสอบการกดรายชื่อเพื่อนำไปสู่หน้าแสดงรายละเอียด
    await tester.tap(find.text('John Doe'));
    await tester.pumpAndSettle(); // รอให้การนำทางเสร็จสิ้น

    // ตรวจสอบว่าไปยังหน้าแสดงรายละเอียดถูกต้อง
    expect(find.text('Student ID: 12345'), findsOneWidget);
    expect(find.text('Gender: male'), findsOneWidget);
  });
}
