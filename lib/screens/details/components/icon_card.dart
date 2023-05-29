import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  // Obtém o tamanho da tela usando MediaQuery
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),  // Define uma margem vertical com base na altura da tela
      padding: EdgeInsets.all(kDefaultPadding / 2),  // Define o preenchimento interno
      height: 62,  // Define a altura do container
      width: 62,  // Define a largura do container
      decoration: BoxDecoration(
        color: kBackgroundColor,  // Define a cor de fundo do container
        borderRadius: BorderRadius.circular(6),  // Define os cantos arredondados do container
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),  // Define um deslocamento vertical para a sombra
            blurRadius: 22,  // Define o raio de desfoque da sombra
            color: kPrimaryColor.withOpacity(0.22),  // Define a cor da sombra com opacidade
          ),
          BoxShadow(
            offset: Offset(-15, -15),  // Define um deslocamento para a sombra
            blurRadius: 20,  // Define o raio de desfoque da sombra
            color: Colors.white,  // Define a cor da sombra
          ),
        ],
      ),
      child: SvgPicture.asset(icon),  // Exibe o ícone a partir de um arquivo SVG
    );
  }
}
