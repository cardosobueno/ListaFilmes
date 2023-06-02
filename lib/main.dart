import 'package:flutter/material.dart';
import 'package:filmes/models/movie.dart';

void main() {
  runApp(CatalogApp());
}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes em alta nos cinemas 🔥'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}



class MovieCard extends StatelessWidget {
  final Filmes movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(movie.imageUrl),
        title: Text(movie.nomeFilme),
        subtitle: Text(movie.dataLancamento),
      ),
    );
  }
}

