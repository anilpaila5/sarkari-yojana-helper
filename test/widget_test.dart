import 'package:flutter_test/flutter_test.dart';

import 'package:sarkari_yojana_helper/main.dart';

void main() {
  testWidgets('App renders home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const SphApp());
    await tester.pumpAndSettle();

    expect(find.text('Sarkari Yojana Helper'), findsOneWidget);
  });
}
