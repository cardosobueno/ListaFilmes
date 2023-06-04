import 'package:flutter/material.dart';
import 'movie.dart';

class MovieDetailPage extends StatelessWidget {
  final Filmes movie;

  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.nomeFilme),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.network(
              movie.imageUrl,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(movie.nomeFilme, 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(movie.dataLancamento,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(
              'Sinopse:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(movie.sinopse),
            SizedBox(height: 16.0),
            Text(
              'Gênero:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(movie.genero),
          ],
        ),
      ),
    );
  }
}
