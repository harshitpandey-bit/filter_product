import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../model.dart';

class DataBaseHelper {
  static const String _dbFileName = "product";

  Future createDbPath() async {
    final String _databaseFilePath;
    Directory _databasePath = await getApplicationDocumentsDirectory();
    _databaseFilePath = join(_databasePath.path, _dbFileName);
    return _databaseFilePath;
  }

  Future getDataBaseFile() async {
    final File _file = File(await createDbPath());
    return _file.path;
  }

  initializeDatabase() async {
    Database _db = await openDatabase(await getDataBaseFile(), version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE products(id INTEGER ,title TEXT ,price NUMERIC,description TEXT,category TEXT,image TEXT)");
    });
    return _db;
  }

  Future<Database> get _getDatabase async {
    Database _db = await initializeDatabase();
    return _db;
  }

  Future insertProducts(List<ProductModel> products) async {
    Database dbClient = await _getDatabase;
    dbClient.delete("products");
    products.forEach((product) {
      dbClient.insert("products", product.toJson(product));
    });
  }
}
