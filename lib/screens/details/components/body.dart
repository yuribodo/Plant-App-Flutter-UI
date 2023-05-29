import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  // Obtém o tamanho da tela usando MediaQuery
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),  // Exibe uma seção de imagem e ícones
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),  // Exibe o título, país e preço do produto
          SizedBox(height: kDefaultPadding),  // Adiciona um espaçamento vertical
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,  // Define a largura do botão como metade da largura da tela
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),  // Define um canto superior direito arredondado
                    ),
                  ),
                  color: kPrimaryColor,  // Define a cor de fundo do botão como a cor primária
                  onPressed: () {},  // Função executada quando o botão é pressionado
                  child: Text(
                    "Buy Now",  // Texto exibido no botão
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},  // Função executada quando o botão é pressionado
                  child: Text("Description"),  // Texto exibido no botão
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
