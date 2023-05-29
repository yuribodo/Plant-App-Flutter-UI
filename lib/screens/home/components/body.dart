import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ele nos fornecerá a altura e a largura total da tela
    Size size = MediaQuery.of(context).size;
    // permite a rolagem em um dispositivo pequeno
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),  // Exibe o cabeçalho com a caixa de pesquisa
          TitleWithMoreBtn(title: "Recomended", press: () {}),  // Exibe um título com um botão "Mais" associado
          RecomendsPlants(),  // Exibe uma seção de plantas recomendadas
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),  // Exibe um título com um botão "Mais" associado
          FeaturedPlants(),  // Exibe uma seção de plantas em destaque
          SizedBox(height: kDefaultPadding),  // Adiciona um espaço vazio com altura predefinida
        ],
      ),
    );
  }
}
