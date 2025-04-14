import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app_elite/pages/login.dart';

void main() {
  testWidgets('Verifica que la pantalla de login muestra los elementos clave', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Verifica que la imagen está presente
    expect(find.byType(Image), findsOneWidget);

    // Verifica que los campos de texto están presentes
    expect(find.widgetWithText(TextField, 'Usuario'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Contraseña'), findsOneWidget);

    // Verifica que el botón de acceso está presente
    expect(find.widgetWithText(ElevatedButton, 'Acceder'), findsOneWidget);
  });
}
