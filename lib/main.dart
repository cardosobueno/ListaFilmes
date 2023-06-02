import 'package:flutter/material.dart';
import 'package:filmes/models/movie.dart';
import 'package:filmes/models/movie_detalhes.dart';

void main() {
  runApp(CatalogApp());
}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGenre = 'Todos';

  List<Filmes> getFilteredMovies() {
    if (selectedGenre == 'Todos') {
      return movies;
    } else {
      return movies.where((movie) => movie.genero == selectedGenre).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes em cartaz'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton<String>(
              value: selectedGenre,
              onChanged: (String? newValue) {
                setState(() {
                  selectedGenre = newValue!;
                });
              },
              items: <String>['Todos', 'Ação', 'Musical','Animação', 'Drama', 'Suspense', 'Terror']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: getFilteredMovies().length,
              itemBuilder: (context, index) {
                return MovieCard(movie: getFilteredMovies()[index]);
              },
            ),
          ),
        ],
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
         onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailPage(movie: movie),
            ),
          );
        },
      ),
    );
  }
}

