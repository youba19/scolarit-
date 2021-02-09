/*import 'dart:async';
import 'dart:io'as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'maj/etudiant.dart';
*/
/*
class DBHelper{
  static Database _db;
  static const String MAT='mat';
  static const String NOM='nom';
  static const String PRENOM='prenom';
  static const String SECTION='section';
  static const String GROUPE='groupe';
  static const String TABLE='Etudiant';
  static const String DB_NAME='etudiant';

  Future<Database> get db async{
    if(_db !=null){
      return _db;
    }
      _db= await initDb();
      return _db;

  }
initDb() async{
    io.Directory documentsDirectory= await getApplicationDocumentsDirectory();
    String path =join(documentsDirectory.path,DB_NAME);
    var db = await openDatabase(path,version: 1,onCreate:_onCreate);
    return db;
}

_onCreate(Database db, int version) async{
    await db.execute("CREATE TABLE $TABLE "
        "($MAT TEXT PRIMARY KEY, "
        "$NOM TEXT ,"
        "$PRENOM TEXT ,"
        "$SECTION TEXT,"
        " $GROUPE TEXT ");
  }

  Future<Etudiant> save(Etudiant etudiant) async{
    var dbEtudient=await db;
    etudiant.mat=await dbEtudient.insert(TABLE, etudiant.toMap());
      return etudiant;
  /*  await dbEtudient.transaction((txn) async{
      var query="INSERT INTO $TABLE ($NOM) VALUES ('"+ etudiant.nom +"')";
          return await txn.rawInsert(query);

   });*/
  }
Future<List<Etudiant>> getEtudiants() async {
    var dbEtudiant =await db;
    List<Map> maps=await dbEtudiant.query(TABLE,columns: [MAT,NOM,PRENOM,SECTION,GROUPE]);
    List<Etudiant> etudiants=[];
    if(maps.length >0){
      for(int i=0;i<maps.length;i++){
        etudiants.add(Etudiant.fromMap(maps[i]));
  }

  }
    return etudiants;
}
Future<int> delete(int mat) async{
    var dbEtudiant=await db;
    return await dbEtudiant.delete(TABLE,where:'$MAT=?',whereArgs: [mat]);
}
Future<int> update(Etudiant etediant) async{
    var dbEtudaint=await db;
    return await dbEtudaint.update(TABLE, etediant.toMap(),
    where: '$MAT= ?',whereArgs: [etediant.mat]
    );
}
  Future close() async{
   var dbEtudiant=await db;
   dbEtudiant.close();
  }
}*/