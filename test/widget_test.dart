import 'package:flutter_test/flutter_test.dart';
import 'package:spendnote/main.dart';

void main() {
  testWidgets('demo profile opens SpendNote', (tester) async {
    await tester.pumpWidget(const SpendNoteApp());
    await tester.tap(find.text('Open SpendNote'));
    await tester.pumpAndSettle();
    expect(find.text('Day'), findsOneWidget);
    expect(find.textContaining('cents'), findsWidgets);
  });
}
