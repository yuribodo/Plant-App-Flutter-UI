import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,  // Preenchimento à esquerda
        right: kDefaultPadding * 2, // Preenchimento à direita
        bottom: kDefaultPadding,    // Preenchimento na parte inferior
      ),
      height: 80,                   // Altura do container
      decoration: BoxDecoration(
        color: Colors.white,   // Cor de fundo branca
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),                     // Deslocamento da sombra para cima
            blurRadius: 35,                              // Raio de desfoque da sombra
            color: kPrimaryColor.withOpacity(0.38),      // Cor da sombra com opacidade
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Alinhamento uniforme dos elementos ao longo do eixo principal
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),  // Ícone do botão obtido de um arquivo SVG
            onPressed: () {},  // Função executada quando o botão é pressionado
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),  // Ícone do botão obtido de um arquivo SVG
            onPressed: () {},  // Função executada quando o botão é pressionado
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),  // Ícone do botão obtido de um arquivo SVG
            onPressed: () {},  // Função executada quando o botão é pressionado
          ),
        ],
      ),
    );
  }
}
