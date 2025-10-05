// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_flutter/main.dart';
import 'package:navigation_flutter/pages/home_pages.dart';
import 'package:navigation_flutter/pages/item_pages.dart';
import 'package:navigation_flutter/models/item.dart';

void main() {
  // buat router yang sama seperti di main.dart
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Homepage()),
      GoRoute(
        path: '/item',
        builder: (context, state) {
          final item = state.extra as Item;
          return ItemPage(item: item);
        },
      ),
    ],
  );

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(router: router));

    // Tunggu sampai semua frame selesai di-render
    await tester.pumpAndSettle();

    // Karena di Homepage GridView, kita bisa cek ada teks Nama/NIM di footer
    expect(find.text('Satrio Wisnu Adi Pratama - 2341720219'), findsOneWidget);
  });
}
