import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/confirmation.dart';

class ConfirmationDbUtil extends DbUtil{
  static const String Table = 'Confirmation';

  Future<List<Confirmation>> getConfirmations() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<Confirmation> datas = [];
    dataMap.forEach((data)=> datas.add(Confirmation.mapToObject(data)));
    return datas;
  }

  Future<bool> insertConfirmation(Confirmation confirmation) async {
    var dbClient = await db;
    try {
      await dbClient.insert(Table, confirmation.mapToUpdate());
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateConfirmation(Confirmation confirmation) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, confirmation.mapToUpdate(),where: DbUtil.Id,whereArgs: [confirmation.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<Confirmation> getConfirmation(int id) async {
    var dbClient = await db;
    Confirmation confirmation;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      confirmation = Confirmation.mapToObject(datas.first);
      return confirmation;
    } catch(e){
      return confirmation;
    }
  }

  Future<bool> deleteConfirmation(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}