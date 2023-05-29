import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),  // Constrói a AppBar personalizada
      body: Body(),  // Constrói o corpo da tela
      bottomNavigationBar: MyBottomNavBar(),  // Constrói a barra de navegação inferior personalizada
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,  // Define a elevação da AppBar
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),  // Exibe um ícone SVG como o ícone do botão de menu
        onPressed: () {},  // Define a função chamada ao pressionar o botão de menu
      ),
    );
  }
}
