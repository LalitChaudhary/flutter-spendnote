import 'package:flutter_test/flutter_test.dart';
import 'package:spendnote/domain/rules.dart';

void main() {
  test('cents advances and then stops at the cap', () {
    expect(nextCents(0), 1);
    expect(capped(12, 12), 12);
    expect(nextCents(-4), 0);
  });
}
