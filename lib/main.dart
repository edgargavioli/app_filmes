import 'package:filme_nota_prova/db/filmes.dart';
import 'package:filme_nota_prova/db/notas.dart';
import 'package:filme_nota_prova/pages/add_filme.dart';
import 'package:filme_nota_prova/pages/edit_filme.dart';
import 'package:filme_nota_prova/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: "Notas para filmes 2 a vingança",
      theme: theme.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/add': (context) => const AdicionaFilme(),
        '/edit': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, Object?>;
          final filme = args['filme'] as Filme;
          final nota = args['nota'] as Nota?;
          return EditaFilme(filme: filme, nota: nota);
        },
      },
    );
  }
}