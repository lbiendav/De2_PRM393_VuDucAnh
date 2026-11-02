import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/expense_model.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('expenses.db');
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

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE expenses (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        category TEXT,
        date TEXT,
        amount REAL
      )
    ''');

    await db.insert('expenses', {
      'title': 'Ăn uống',
      'category': 'Sinh hoạt',
      'date': '29/10/2026',
      'amount': 150000,
    });
    await db.insert('expenses', {
      'title': 'Di chuyển',
      'category': 'Đi lại',
      'date': '28/10/2026',
      'amount': 50000,
    });
    await db.insert('expenses', {
      'title': 'Mua sách',
      'category': 'Học tập',
      'date': '27/10/2026',
      'amount': 200000,
    });
    await db.insert('expenses', {
      'title': 'Mua sắm',
      'category': 'Sinh hoạt',
      'date': '25/10/2026',
      'amount': 1500000,
    });
    await db.insert('expenses', {
      'title': 'Khám bệnh',
      'category': 'Sức khỏe',
      'date': '22/10/2026',
      'amount': 3550000,
    });
  }

  Future<List<ExpenseModel>> getAllExpenses() async {
    final db = await database;
    final maps = await db.query('expenses', orderBy: 'id ASC');
    return maps.map((e) => ExpenseModel.fromMap(e)).toList();
  }

  Future<int> updateExpense(ExpenseModel expense) async {
    final db = await database;
    return await db.update(
      'expenses',
      expense.toMap(),
      where: 'id = ?',
      whereArgs: [expense.id],
    );
  }
}
