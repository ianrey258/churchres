import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/charity.dart';

class CharityDbUtil extends DbUtil{
  static const String Table = 'Charity';

  Future<List<Charity>> getCharitys() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<Charity> datas = [];
    dataMap.forEach((data)=> datas.add(Charity.mapToObject(data)));
    return datas;
  }

  Future<bool> insertCharity(Charity charity) async {
    var dbClient = await db;
    try {
      await dbClient.insert(Table, charity.mapToUpdate());
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateCharity(Charity charity) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, charity.mapToUpdate(),where: DbUtil.Id,whereArgs: [charity.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<Charity> getCharity(int id) async {
    var dbClient = await db;
    Charity charity;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      charity = Charity.mapToObject(datas.first);
      return charity;
    } catch(e){
      return charity;
    }
  }

  Future<bool> deleteCharity(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}