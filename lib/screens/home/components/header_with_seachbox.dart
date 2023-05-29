import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),  // Define a margem inferior do contêiner
      // Ele cobrirá 20% da altura total
      height: size.height * 0.2,  // Define a altura do contêiner
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,  // Define o preenchimento à esquerda do contêiner
              right: kDefaultPadding,  // Define o preenchimento à direita do contêiner
              bottom: 36 + kDefaultPadding,  // Define o preenchimento inferior do contêiner
            ),
            height: size.height * 0.2 - 27,  // Define a altura do contêiner interno
            decoration: BoxDecoration(
              color: kPrimaryColor,  // Define a cor de fundo do contêiner
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),  // Define o raio de borda inferior esquerdo do contêiner
                bottomRight: Radius.circular(36),  // Define o raio de borda inferior direito do contêiner
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Uishopy!',  // Texto exibido no cabeçalho
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),  // Define o estilo do texto
                ),
                Spacer(),
                Image.asset("assets/images/logo.png"),  // Exibe a imagem do logotipo
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),  // Define a margem horizontal do contêiner
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),  // Define o preenchimento horizontal do contêiner
              height: 54,  // Define a altura do contêiner
              decoration: BoxDecoration(
                color: Colors.white,  // Define a cor de fundo do contêiner
                borderRadius: BorderRadius.circular(20),  // Define o raio de borda do contêiner
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),  // Define o deslocamento da sombra
                    blurRadius: 50,  // Define o raio de desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.23),  // Define a cor e a opacidade da sombra
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},  // Define a função chamada quando o texto é alterado
                      decoration: InputDecoration(
                        hintText: "Search",  // Texto exibido como dica no campo de pesquisa
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),  // Define a cor e a opacidade da dica
                        ),
                        enabledBorder: InputBorder.none,  // Remove a borda quando o campo não está focado
                        focusedBorder: InputBorder.none,  // Remove a borda quando o campo está focado
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),  // Exibe o ícone de pesquisa à direita do campo
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),  // Exibe o ícone de pesquisa à direita do campo
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
