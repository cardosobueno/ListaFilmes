import 'package:flutter/material.dart';

class Filmes {
  String nomeFilme;
  String dataLancamento;
  String imageUrl;
  String sinopse;
  String genero;

  Filmes({required this.nomeFilme, required this.dataLancamento, 
  required this.sinopse, required this.genero, required this.imageUrl});
}
List<Filmes> movies = [
  Filmes(
    nomeFilme: 'Guardiões da galáxia Vol.3',
    dataLancamento: '4 de maio de 2023',
    sinopse: 'Em Guardiões da Galáxia Vol. 3, o amado grupo de desajustados busca se estabelecer em Lugar Nenhum, mas não demora muito para que suas vidas sejam reviradas pelos ecos do passado turbulento de Rocket (Bradley Cooper). Ainda se recuperando da perda de Gamora (Zoe Saldana), após os acontecimentos de Vingadores: Guerra Infinita (2018), Peter Quill (Chris Pratt) reúne sua equipe para defender o universo e um companheiro de equipe. Mas esta missão pode significar o fim dos Guardiões como conhecemos, se ela não for bem-sucedida. Encerramento da trilogia iniciada em 2014, sendo a continuação de Guardiões da Galáxia Vol. 2 (2017).',
    genero: 'Ação',
    imageUrl: 'assets/images/guardioes.jpg',
  ),
  Filmes(
    nomeFilme: 'Homem-Aranha: Através do Aranhaverso',
    dataLancamento: '1 de junho de 2023',
    sinopse: 'Homem-Aranha: Através do Aranhaverso, é a continuação do vencedor do Oscar Homem-Aranha: No Aranhaverso, de 2018, que acompanha Miles Morales (Shameik Moore), o simpático Homem-Aranha do Brooklyn. Neste novo capítulo, Miles está de volta para uma nova missão em sua agitada vida como super herói. No novo filme, Morales é transportado para uma aventura épica através do multiverso, e deve unir forças com a mulher-aranha Gwen Stacy (Hailee Steinfeld) e um novo time de Pessoas-Aranha, formado por heróis de diversas dimensões. No entanto, tudo muda quando os heróis entram em conflito sobre como lidar com uma nova ameaça, e Miles se vê em um impasse. E para piorar ainda mais a situação, eles precisam enfrentar um vilão muito mais poderoso do que qualquer coisa que já tenham encontrado antes. Agora, para salvar as pessoas que ele mais ama no mundo, Miles deve redefinir o que significa ser um super herói.',
    genero: 'Animação',
    imageUrl: 'assets/images/homem-aranha.jpeg',
  ),
  Filmes(
    nomeFilme: 'A Pequena Sereia',
    dataLancamento: '25 de maio de 2023',
    sinopse: 'Remake live action do clássico desenho animado A Pequena Sereia, de 1989, da Disney. A caçula das filhas do Rei Tritão (Javier Bardem), Ariel (Halle Bailey) é uma bela e espirituosa jovem sereia com sede de aventura. Desejando descobrir mais sobre o mundo além do mar, Ariel visita a superfície e se apaixona intensamente pelo arrojado Príncipe Eric (Jonah Hauer-King), ao salvá-lo de um naufrágio. Mas para procurá-lo em terra firme e se aproximar do príncipe humano, a sereia pede ajuda à bruxa do mar, Úrsula (Melissa McCarthy), e aceita ceder sua voz para que a feiticeira lhe dê pernas. Agora, ela terá o desafio de se comunicar com o rapaz ao experimentar a vida em terra firme, além de entrar em conflito com os valores de sua família. "A Pequena Sereia" é um conto de fadas literário escrito pelo autor dinamarquês Hans Christian Andersen, publicado pela primeira vez em 1837.',
    genero: 'Musical',
    imageUrl: 'assets/images/pequena-sereia.jpg',
  ),
  Filmes(
    nomeFilme: 'Velozes e Furiosos 10',
    dataLancamento: '19 de maio de 2023',
    sinopse: 'No décimo filme da série Velozes & Furiosos e último da nova trilogia (Velozes 8, 9 e 10), ao longo de muitas missões e contra probabilidades que pareciam impossíveis, Dom Toretto (Vin Diesel) e sua família foram mais espertos e superaram todos os inimigos em seu caminho. Agora, eles devem desafiar o adversário mais letal que já enfrentaram. Alimentada pela vingança, uma ameaça terrível emerge das sombras do passado na forma de Dante (Jason Momoa), para destruir o mundo de Toretto e destruir tudo - e todos - que ele ama. Ele então, comandando novamente a equipe de corredores mais conhecida do mundo, encara mais uma difícil missão sobre quatro rodas. O fim da estrada começa e Velozes & Furiosos 10 lança os capítulos finais de uma das franquias globais mais famosas e populares do cinema, agora em sua terceira década e ainda forte com o mesmo elenco e personagens centrais de quando começou.',
    genero: 'Ação',
    imageUrl: 'assets/images/velozesefuriosos.jpg',
  ),
  // Adicione mais filmes à lista
];