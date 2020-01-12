import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/baptism.dart';

class BaptismDbUtil extends DbUtil{
  static const String Table = 'BaptismM';

  Future<List<BaptismM>> getBaptismMs() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<BaptismM> datas = [];
    dataMap.forEach((data)=> datas.add(BaptismM.mapToObject(data)));
    return datas;
  }

  Future<bool> insertBaptismM(BaptismM baptism) async {
    var dbClient = await db;
    try {
      await dbClient.insert(Table, baptism.mapToUpdate());
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateBaptismM(BaptismM baptism) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, baptism.mapToUpdate(),where: DbUtil.Id,whereArgs: [baptism.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<BaptismM> getBaptismM(int id) async {
    var dbClient = await db;
    BaptismM baptism;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      baptism = BaptismM.mapToObject(datas.first);
      return baptism;
    } catch(e){
      return baptism;
    }
  }

  Future<bool> deleteBaptismM(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}