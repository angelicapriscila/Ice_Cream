import 'package:helloworld/bd/db_helper.dart';
import 'package:helloworld/domain/card_IceCream.dart';
import 'package:sqflite/sqflite.dart';
class PacoteDao {
SalvarPacotes(PacoteIce pacote) async {
Database database = await DBHelper().initDB();
database.insert('PACOTE', pacote.toJson());
}
ListarPacotes() async {
Database database = await DBHelper().initDB();
String sql = 'SELECT * FROM PACOTE;';
var result = await database.rawQuery(sql);
List<PacoteIce> lista = [];
for (var json in result) {
PacoteIce pacote = PacoteIce.fromJson(json);
lista.add(pacote);
}
return lista;
}
}
