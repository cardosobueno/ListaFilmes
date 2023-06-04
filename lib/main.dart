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
      title: 'CARTAZ | CINEMARK',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
  String generoEscolhido = 'Todos';

  List<Filmes> getFilteredMovies() {
    if (generoEscolhido == 'Todos') {
      return movies;
    } else {
      return movies.where((movie) => movie.genero == generoEscolhido).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Column(
          children: [
            Text('CINEMARK', style: TextStyle(fontSize: 30)),
            Text('Filmes em cartaz', style: TextStyle(fontSize: 18)),
          ],
        ),
        centerTitle: true, // Adicione esta linha
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton<String>(
              value: generoEscolhido,
              onChanged: (String? newValue) {
                setState(() {
                  generoEscolhido = newValue!;
                });
              },
              dropdownColor: Colors.black,
              items: <String>[
                'Todos',
                'Ação',
                'Musical',
                'Animação',
                'Drama',
                'Suspense',
                'Terror'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.white),
                  ),
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
      color: Colors.red,
      child: Container(
        height: 150,
        child: ListTile(
         
          leading: SizedBox(
            width: 150, // Ajuste o valor para definir a largura da imagem
            child: Image.network(
              movie.imageUrl,
              
            ),
          ),
          title: Text(
            movie.nomeFilme,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            movie.dataLancamento,
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailPage(movie: movie),
              ),
            );
          },
        ),
      ),
    );
  }
}