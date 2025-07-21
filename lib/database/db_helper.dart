import "package:path/path.dart" as p;
import "package:sqflite/sqflite.dart";
import "../model/user_mode.dart";

class DBHelper {
  static Database? _db;

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDB();
    return _db!;
  }

  Future<Database> initDB() async {
    final String dbPath = await getDatabasesPath();
    final String path = p.join(dbPath, "app.db");

    return openDatabase(
      path,
      version: 1,
      onCreate: (final Database db, final int version) async {
        await db.execute("""
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            email TEXT NOT NULL,
            password TEXT NOT NULL
          )
        """);
      },
    );
  }

  Future<void> insertUser(final UserModel user) async {
    final Database db = await database;
    await db.insert("users", user.toMap());
  }

  Future<UserModel?> getUser(final String email, final String password) async {
    final Database db = await database;
    final List<Map<String, Object?>> result = await db.query(
      "users",
      where: "email = ? AND password = ?",
      whereArgs: <Object?>[email, password],
    );

    if (result.isNotEmpty) {
      return UserModel.fromMap(result.first);
    } else {
      return null;
    }
  }
}
