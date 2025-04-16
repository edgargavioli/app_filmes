import 'package:flutter/material.dart';
import 'package:filme_nota_prova/db/filmes.dart';

class AdicionaFilme extends StatefulWidget {
  const AdicionaFilme({super.key});

  @override
  State<AdicionaFilme> createState() => _AdicionaFilmeState();
}

class _AdicionaFilmeState extends State<AdicionaFilme> {
  final _formKey = GlobalKey<FormState>();
  final _tituloController = TextEditingController();
  final _diretorController = TextEditingController();
  final _capaController = TextEditingController();
  final _anoController = TextEditingController();

  @override
  void dispose() {
    _tituloController.dispose();
    _diretorController.dispose();
    _capaController.dispose();
    _anoController.dispose();
    super.dispose();
  }

  Future<void> _adicionarFilme() async {
    if (_formKey.currentState!.validate()) {
      final novoFilme = Filme(
        titulo: _tituloController.text,
        diretor: _diretorController.text,
        capa: _capaController.text,
        ano: int.parse(_anoController.text),
      );

      await FilmeDatabase.instance.addFilme(novoFilme);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Filme adicionado com sucesso!')),
      );

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Filme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _tituloController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o título do filme.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _diretorController,
                decoration: const InputDecoration(labelText: 'Diretor'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do diretor.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _capaController,
                decoration: const InputDecoration(labelText: 'URL da Capa'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a URL da capa.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _anoController,
                decoration: const InputDecoration(labelText: 'Ano'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o ano do filme.';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Por favor, insira um ano válido.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _adicionarFilme,
                child: const Text('Adicionar Filme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}