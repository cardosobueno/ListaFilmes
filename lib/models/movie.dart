import 'package:flutter/material.dart';

class Filmes {
  String nomeFilme;
  String dataLancamento;
  String imageUrl;

  Filmes({required this.nomeFilme, required this.dataLancamento, required this.imageUrl});
}
List<Filmes> movies = [
  Filmes(
    nomeFilme: 'Guardiões da galaxia',
    dataLancamento: '4 de maio de 2023',
    imageUrl: 'assets/images/guardioes.jpg',
  ),
  Filmes(
    nomeFilme: 'Homem-Aranha: Através do Aranhaverso',
    dataLancamento: '1 de junho de 2023',
    imageUrl: 'assets/images/homem-aranha.jpeg',
  ),
  Filmes(
    nomeFilme: 'A Pequena Sereia',
    dataLancamento: '25 de maio de 2023',
    imageUrl: 'assets/images/pequena-sereia.jpg',
  ),
  Filmes(
    nomeFilme: 'Velozes e Furiosos 10',
    dataLancamento: '19 de maio de 2023',
    imageUrl: 'assets/images/velozesefuriosos.jpg',
  ),
  // Adicione mais filmes à lista
];