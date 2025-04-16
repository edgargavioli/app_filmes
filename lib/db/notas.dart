import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Nota {
  final int? id;
  final int filmeId;
  final double nota;
  final String? resenha;

  Nota({this.id, required this.filmeId, required this.nota, this.resenha});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'filmeId': filmeId,
      'nota': nota,
      'resenha': resenha,
    };
  }

  static Nota fromMap(Map<String, dynamic> map) {
    return Nota(
      id: map['id'],
      filmeId: map['filmeId'],
      nota: map['nota'],
      resenha: map['resenha'],
    );
  }
}

class NotaDatabase {
  static final NotaDatabase instance = NotaDatabase._init();
  static Database? _database;

  NotaDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('notas.db');
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
      CREATE TABLE notas (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        filmeId INTEGER NOT NULL,
        nota REAL NOT NULL,
        resenha TEXT,
        FOREIGN KEY (filmeId) REFERENCES filmes (id)
      )
    ''');
  }

  Future<int> addNota(Nota nota) async {
    if (nota.nota < 1 || nota.nota > 5) {
      throw Exception('A nota deve estar entre 1 e 5.');
    }

    final db = await instance.database;
    return await db.insert('notas', nota.toMap());
  }

  Future<List<Nota>> getNotas() async {
    final db = await instance.database;
    final result = await db.query('notas');
    return result.map((map) => Nota.fromMap(map)).toList();
  }

  Future<int> updateNota(Nota nota) async {
    final db = await instance.database;
    return await db.update(
      'notas',
      nota.toMap(),
      where: 'id = ?',
      whereArgs: [nota.id],
    );
  }

  Future<int> deleteNota(int id) async {
    final db = await instance.database;
    return await db.delete(
      'notas',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}