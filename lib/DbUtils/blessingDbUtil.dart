import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/blessing.dart';

class BlessingDbUtil extends DbUtil{
  static const String Table = 'Blessing';

  Future<List<Blessing>> getBlessings() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<Blessing> datas = [];
    dataMap.forEach((data)=> datas.add(Blessing.mapToObject(data)));
    return datas;
  }

  Future<bool> insertBlessing(Blessing blessing) async {
    var dbClient = await db;
    try {
      await dbClient.insert(Table, blessing.mapToUpdate());
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateBlessing(Blessing blessing) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, blessing.mapToUpdate(),where: DbUtil.Id,whereArgs: [blessing.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<Blessing> getBlessing(int id) async {
    var dbClient = await db;
    Blessing blessing;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      blessing = Blessing.mapToObject(datas.first);
      return blessing;
    } catch(e){
      return blessing;
    }
  }

  Future<bool> deleteBlessing(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}