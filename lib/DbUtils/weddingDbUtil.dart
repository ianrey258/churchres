import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/wedding.dart';

class WeddingDbUtil extends DbUtil{
  static const String Table = 'Wedding';

  Future<List<Wedding>> getWeddings() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<Wedding> datas = [];
    dataMap.forEach((data)=> datas.add(Wedding.mapToObject(data)));
    return datas;
  }

  Future<bool> insertWedding(Wedding wedding) async {
    var dbClient = await db;
    try {
      await dbClient.insert(Table, wedding.mapToUpdate());
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateWedding(Wedding wedding) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, wedding.mapToUpdate(),where: DbUtil.Id,whereArgs: [wedding.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<Wedding> getWedding(int id) async {
    var dbClient = await db;
    Wedding wedding;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      wedding = Wedding.mapToObject(datas.first);
      return wedding;
    } catch(e){
      return wedding;
    }
  }

  Future<bool> deleteWedding(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}