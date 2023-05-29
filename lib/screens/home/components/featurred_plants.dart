import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,  // Permite a rolagem horizontal
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",  // Imagem exibida no cartão
            press: () {},  // Função chamada quando o cartão é pressionado
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",  // Imagem exibida no cartão
            press: () {},  // Função chamada quando o cartão é pressionado
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,  // Define a função chamada quando o cartão é pressionado
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,  // Define a margem esquerda do cartão
          top: kDefaultPadding / 2,  // Define a margem superior do cartão
          bottom: kDefaultPadding / 2,  // Define a margem inferior do cartão
        ),
        width: size.width * 0.8,  // Define a largura do cartão
        height: 185,  // Define a altura do cartão
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),  // Define o raio de borda do cartão
          image: DecorationImage(
            fit: BoxFit.cover,  // Ajusta a imagem para preencher o espaço do cartão
            image: AssetImage(image),  // Define a imagem exibida no cartão
          ),
        ),
      ),
    );
  }
}
