import 'package:flutter/material.dart';
import 'package:filme_nota_prova/db/filmes.dart';
import 'package:filme_nota_prova/db/notas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Filme> filmes = [];
  List<Nota> notas = [];
  bool isLoading = true;
  bool isAscending = true;
  Filme? filmeSelecionado;

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
    _loadData();
  }

  Future<void> _initializeDatabase() async {
    await FilmeDatabase.instance.database;
    await NotaDatabase.instance.database;
  }

  Future<void> _loadData() async {
    setState(() {
      isLoading = true;
    });

    filmes = await FilmeDatabase.instance.getFilmes();
    notas = await NotaDatabase.instance.getNotas();

    filmes.sort((a, b) {
      final notaA = _getNotaForFilme(a.id!)?.nota ?? 0;
      final notaB = _getNotaForFilme(b.id!)?.nota ?? 0;
      return isAscending ? notaA.compareTo(notaB) : notaB.compareTo(notaA);
    });

    setState(() {
      isLoading = false;
    });
  }

  Nota? _getNotaForFilme(int filmeId) {
    return notas.firstWhere(
      (nota) => nota.filmeId == filmeId,
      orElse: () => Nota(filmeId: filmeId, nota: 0, resenha: ''),
    );
  }

  void _mostrarDialogoDeletar(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Confirmar Exclusão'),
            content: Text(
              'Tem certeza que deseja excluir o filme "${filmeSelecionado?.titulo}"?',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Fecha o diálogo sem excluir
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () async {
                  if (filmeSelecionado != null) {
                    await FilmeDatabase.instance.deleteFilme(
                      filmeSelecionado!.id!,
                    );
                    setState(() {
                      filmeSelecionado = null; // Reseta o estado do botão
                    });
                    _loadData(); // Recarrega os dados
                    Navigator.pop(context); // Fecha o diálogo
                  }
                },
                child: const Text('Excluir'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          filmeSelecionado = null; // Limpa a seleção ao clicar fora
        });
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          titleSpacing: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("lib/shared/images/logo.png", height: 100),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                isAscending ? Icons.arrow_upward : Icons.arrow_downward,
              ),
              onPressed: () {
                setState(() {
                  isAscending = !isAscending; // Alterna a ordenação
                });
                _loadData(); // Recarrega os dados com a nova ordenação
              },
            ),
          ],
        ),
        body:
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : filmes.isEmpty
                ? const Center(child: Text('Nenhum filme encontrado.'))
                : ListView.builder(
                  itemCount: filmes.length,
                  itemBuilder: (context, index) {
                    final filme = filmes[index];
                    final nota = _getNotaForFilme(filme.id!);

                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      color:
                          filmeSelecionado == filme
                              ? Theme.of(context).colorScheme.primaryContainer
                              : null, // Destaque para o item selecionado
                      child: ListTile(
                        onLongPress: () {
                          setState(() {
                            filmeSelecionado =
                                filme; // Define o filme selecionado
                          });
                        },
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/edit',
                            arguments: {
                              'filme': filme,
                              if (nota != null && nota.nota > 0)
                                'nota': nota, // Envia a nota apenas se existir
                            },
                          ).then((_) {
                            _loadData();
                          });
                        },
                        leading: Image.network(
                          filme.capa,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              "lib/shared/images/logo.png",
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                        title: Text(filme.titulo),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Diretor: ${filme.diretor}'),
                            if (nota != null && nota.nota > 0)
                              Text('Nota: ${nota.nota.toStringAsFixed(1)}'),
                            if (nota != null &&
                                nota.resenha != null &&
                                nota.resenha!.isNotEmpty)
                              Text('Resenha: ${nota.resenha!}'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        floatingActionButton:
            filmeSelecionado == null
                ? FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add').then((_) {
                      _loadData();
                    });
                  },
                  child: const Icon(Icons.add),
                )
                : FloatingActionButton(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  onPressed: () {
                    _mostrarDialogoDeletar(context);
                  },
                  child: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.onError,
                  ),
                ),
      ),
    );
  }
}
