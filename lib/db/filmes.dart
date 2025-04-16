import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Filme {
  final int? id;
  final String titulo;
  final String diretor;
  final String capa;
  final int ano;

  Filme({this.id, required this.titulo, required this.diretor, required this.capa, required this.ano});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'diretor': diretor,
      'capa': capa,
      'ano': ano,
    };
  }

  static Filme fromMap(Map<String, dynamic> map) {
    return Filme(
      id: map['id'],
      titulo: map['titulo'],
      diretor: map['diretor'],
      capa: map['capa'],
      ano: map['ano'],
    );
  }
}

class FilmeDatabase {
  static final FilmeDatabase instance = FilmeDatabase._init();
  static Database? _database;

  FilmeDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('filmes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE filmes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        titulo TEXT NOT NULL,
        diretor TEXT NOT NULL,
        capa TEXT NOT NULL,
        ano INTEGER NOT NULL
      )
    ''');
  }

  Future<int> addFilme(Filme filme) async {
    final db = await instance.database;
    return await db.insert('filmes', filme.toMap());
  }

  Future<List<Filme>> getFilmes() async {
    final db = await instance.database;
    final result = await db.query('filmes');
    return result.map((map) => Filme.fromMap(map)).toList();
  }

  Future<int> updateFilme(Filme filme) async {
    final db = await instance.database;
    return await db.update(
      'filmes',
      filme.toMap(),
      where: 'id = ?',
      whereArgs: [filme.id],
    );
  }

  Future<int> deleteFilme(int id) async {
    final db = await instance.database;
    return await db.delete(
      'filmes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}