import 'package:sqflite/sqflite.dart';

import '../components/task.dart';

class taskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_diffulty INTERGER,'
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _diffulty = 'difficulty';
  static const String _image = 'image';

  save(Task tarefa) async {}
  Future<List<Task>> findAll() async{
    print('Acessando o findAll: ');
    final Database bancoDeDados = await getDatabase();
  }
  Future<List<Task>> find(String nomeDaTarefa) async{}
  delete(String nomeDaTarefa) async{}
}
