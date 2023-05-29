import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,  // Define a direção de rolagem horizontal
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",  // Define o caminho da imagem
            title: "Samantha",  // Define o título da planta
            country: "Russia",  // Define o país da planta
            price: 440,  // Define o preço da planta
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),  // Navega para a tela de detalhes ao pressionar a planta recomendada
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;  // Define as propriedades da planta recomendada
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,  // Define a margem esquerda do contêiner
        top: kDefaultPadding / 2,  // Define a margem superior do contêiner
        bottom: kDefaultPadding * 2.5,  // Define a margem inferior do contêiner
      ),
      width: size.width * 0.4,  // Define a largura do contêiner
      child: Column(
        children: <Widget>[
          Image.asset(image),  // Exibe a imagem da planta recomendada
          GestureDetector(
            onTap: press,  // Define a função chamada ao pressionar o contêiner
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),  // Define o preenchimento interno do contêiner
              decoration: BoxDecoration(
                color: Colors.white,  // Define a cor de fundo do contêiner
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),  // Define o raio de borda inferior esquerdo do contêiner
                  bottomRight: Radius.circular(10),  // Define o raio de borda inferior direito do contêiner
                ),
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
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),  // Exibe o título da planta recomendada em maiúsculas
                            style: Theme.of(context).textTheme.button),  // Define o estilo de texto para o título
                        TextSpan(
                          text: "$country".toUpperCase(),  // Exibe o país da planta recomendada em maiúsculas
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),  // Define a cor e a opacidade do texto do país
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',  // Exibe o preço da planta recomendada
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),  // Define o estilo de texto para o preço
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
