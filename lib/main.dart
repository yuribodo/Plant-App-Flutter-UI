import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,  // Define a cor de fundo padrão para o aplicativo
        primaryColor: kPrimaryColor,  // Define a cor primária para o aplicativo
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),  // Aplica a cor de texto padrão para o aplicativo
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),  // Define a tela inicial do aplicativo como HomeScreen
    );
  }
}
