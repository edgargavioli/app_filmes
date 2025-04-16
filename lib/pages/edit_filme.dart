import 'package:flutter/material.dart';
import 'package:filme_nota_prova/db/filmes.dart';
import 'package:filme_nota_prova/db/notas.dart';

class EditaFilme extends StatefulWidget {
  final Filme filme;
  final Nota? nota;

  const EditaFilme({super.key, required this.filme, this.nota});

  @override
  State<EditaFilme> createState() => _EditaFilmeState();
}

class _EditaFilmeState extends State<EditaFilme> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _tituloController;
  late TextEditingController _diretorController;
  late TextEditingController _capaController;
  late TextEditingController _anoController;
  late TextEditingController _notaController;
  late TextEditingController _resenhaController;

  @override
  void initState() {
    super.initState();
    _tituloController = TextEditingController(text: widget.filme.titulo);
    _diretorController = TextEditingController(text: widget.filme.diretor);
    _capaController = TextEditingController(text: widget.filme.capa);
    _anoController = TextEditingController(text: widget.filme.ano.toString());
    _notaController = TextEditingController(text: widget.nota?.nota.toString() ?? '');
    _resenhaController = TextEditingController(text: widget.nota?.resenha ?? '');
  }

  @override
  void dispose() {
    _tituloController.dispose();
    _diretorController.dispose();
    _capaController.dispose();
    _anoController.dispose();
    _notaController.dispose();
    _resenhaController.dispose();
    super.dispose();
  }

  Future<void> _salvarAlteracoes() async {
    if (_formKey.currentState!.validate()) {
      // Atualizar informações do filme
      final filmeAtualizado = Filme(
        id: widget.filme.id,
        titulo: _tituloController.text,
        diretor: _diretorController.text,
        capa: _capaController.text,
        ano: int.parse(_anoController.text),
      );
      await FilmeDatabase.instance.updateFilme(filmeAtualizado);

      // Atualizar ou adicionar nota e resenha
      final notaAtualizada = Nota(
        id: widget.nota?.id,
        filmeId: widget.filme.id!,
        nota: double.parse(_notaController.text),
        resenha: _resenhaController.text,
      );

      if (widget.nota == null) {
        await NotaDatabase.instance.addNota(notaAtualizada);
      } else {
        await NotaDatabase.instance.updateNota(notaAtualizada);
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Alterações salvas com sucesso!')),
      );

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Filme'),
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
              TextFormField(
                controller: _notaController,
                decoration: const InputDecoration(labelText: 'Nota (1 a 5)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a nota.';
                  }
                  final nota = double.tryParse(value);
                  if (nota == null || nota < 1 || nota > 5) {
                    return 'A nota deve estar entre 1 e 5.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _resenhaController,
                decoration: const InputDecoration(labelText: 'Resenha'),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvarAlteracoes,
                child: const Text('Salvar Alterações'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}