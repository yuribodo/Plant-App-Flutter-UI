import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),  // Define o espaçamento inferior
      child: SizedBox(
        height: size.height * 0.8,  // Define a altura do container com base na altura da tela
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),  // Define o espaçamento vertical interno
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),  // Define o espaçamento horizontal do botão
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),  // Ícone do botão obtido de um arquivo SVG
                        onPressed: () {
                          Navigator.pop(context);  // Navega para a tela anterior quando o botão é pressionado
                        },
                      ),
                    ),
                    Spacer(),  // Adiciona um espaçamento flexível
                    IconCard(icon: "assets/icons/sun.svg"),  // Exibe um cartão de ícone com o ícone obtido de um arquivo SVG
                    IconCard(icon: "assets/icons/icon_2.svg"),  // Exibe um cartão de ícone com o ícone obtido de um arquivo SVG
                    IconCard(icon: "assets/icons/icon_3.svg"),  // Exibe um cartão de ícone com o ícone obtido de um arquivo SVG
                    IconCard(icon: "assets/icons/icon_4.svg"),  // Exibe um cartão de ícone com o ícone obtido de um arquivo SVG
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,  // Define a altura do container com base na altura da tela
              width: size.width * 0.75,  // Define a largura do container com base na largura da tela
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),  // Define um canto superior esquerdo arredondado
                  bottomLeft: Radius.circular(63),  // Define um canto inferior esquerdo arredondado
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),  // Define um deslocamento vertical para a sombra
                    blurRadius: 60,  // Define o raio de desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.29),  // Define a cor da sombra com opacidade
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,  // Define o alinhamento da imagem dentro do container
                  fit: BoxFit.cover,  // Define o modo de ajuste da imagem dentro do container
                  image: AssetImage("assets/images/img.png"),  // Imagem obtida a partir de um arquivo de imagem
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
