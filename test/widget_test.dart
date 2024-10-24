import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_uts/main.dart';

void main() {
  testWidgets('LoginPage displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that LoginPage is displayed.
    expect(find.text('Login'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
    expect(find.text('Email Anda'), findsOneWidget);
    expect(find.text('Password Anda'), findsOneWidget);

    // Verify that the Login button and Register link are present.
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Belum punya akun ? Daftar'), findsOneWidget);
  });

  testWidgets('Navigation to RegisterPage', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap the Register link.
    await tester.tap(find.text('Belum punya akun ? Daftar'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that RegisterPage is displayed.
    expect(find.text('Daftar'), findsOneWidget);
    expect(find.text('Nama Lengkap'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Confirm Password'), findsOneWidget);
  });
}
