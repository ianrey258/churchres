import 'dart:async';
import 'package:church2go/DbUtils/DbUtil.dart';
import 'package:church2go/Model/account.dart';
import 'package:sqflite/sqlite_api.dart';

class AccountDbUtil extends DbUtil{
  static const String Table = 'Account';

  Future<List<Account>> getAccounts() async {
    var dbClient = await db;
    List<Map> dataMap = await dbClient.query(Table);
    List<Account> datas = [];
    dataMap.forEach((data)=> datas.add(Account.mapToObject(data)));
    return datas;
  }

  Future<bool> insertAccount(Account account) async {
    var dbClient = await db;
    try {
      var result = await dbClient.insert(Table, account.mapToUpdate(),conflictAlgorithm: ConflictAlgorithm.replace);
      print(result);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<bool> updateAccount(Account account) async {
    var dbClient = await db;
    try{
      await dbClient.update(Table, account.mapToUpdate(),where: DbUtil.Id,whereArgs: [account.id]);
      return true;
    } catch(e){
      return false;
    }
  }

  Future<Account> getAccount(int id) async {
    var dbClient = await db;
    Account account;
    try{
      List<Map> datas = await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      account = Account.mapToObject(datas.first);
      return account;
    } catch(e){
      return account;
    }
  }

  Future<bool> deleteAccount(int id) async {
    var dbClient = await db;
    try{
      await dbClient.query(Table,where: DbUtil.Id,whereArgs: [id]);
      return true;
    } catch(e){
      return false;
    }
  }

}