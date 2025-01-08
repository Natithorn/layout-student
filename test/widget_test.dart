
import 'package:flutter_test/flutter_test.dart';
import 'package:layout/main.dart';

void main() {
  testWidgets('Check if student list renders correctly', (WidgetTester tester) async {
    
    await tester.pumpWidget(StudentApp());

    
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Jane Smith'), findsOneWidget);

    
    await tester.tap(find.text('John Doe'));
    await tester.pumpAndSettle(); 

    
    expect(find.text('Student ID: 12345'), findsOneWidget);
    expect(find.text('Gender: male'), findsOneWidget);
  });
}
