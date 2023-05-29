import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),  // Define o espaçamento horizontal externo
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",  // Texto exibido como título
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),  // Define o estilo do título
                ),
                TextSpan(
                  text: country,  // Texto exibido como país
                  style: TextStyle(
                    fontSize: 20,  // Define o tamanho da fonte
                    color: kPrimaryColor,  // Define a cor do texto
                    fontWeight: FontWeight.w300,  // Define o peso da fonte
                  ),
                ),
              ],
            ),
          ),
          Spacer(),  // Adiciona um espaçamento flexível
          Text(
            "\$$price",  // Texto exibido como preço
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),  // Define o estilo do preço
          )
        ],
      ),
    );
  }
}
