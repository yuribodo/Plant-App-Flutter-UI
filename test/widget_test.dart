// Este é um teste básico de widget do Flutter.
//
// Para realizar uma interação com um widget no seu teste, use a classe WidgetTester
// que o Flutter fornece. Por exemplo, você pode enviar toques e gestos de rolagem.
// Você também pode usar o WidgetTester para encontrar widgets filhos na árvore de widgets,
// ler texto e verificar se os valores das propriedades do widget estão corretos.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plant_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Constrói o aplicativo e dispara um frame.
    await tester.pumpWidget(MyApp());

    // Verifica se o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca no ícone '+' e dispara um frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica se o contador foi incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
