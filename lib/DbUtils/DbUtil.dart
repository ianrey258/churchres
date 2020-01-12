import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbUtil{
  static Database _db;
  static const String Id = 'id';
  static const String UserId = 'user_id';
  static const String Username = 'username';
  static const String Password = 'password';
  static const String Church = 'church';
  static const String Firstname = 'firstname';
  static const String Lastname = 'lastname';
  static const String Age = 'age';
  static const String Gender = 'gender';
  static const String Address = 'address';
  static const String Email = 'email';
  static const String ContactNo = 'contactNo';
  static const String ChildFname = 'childFname';
  static const String ChildLname = 'childLname';
  static const String ChildAge = 'childLname';
  static const String ChildGender = 'childAge';
  static const String PartnerFname = 'firstname_partner';
  static const String PartnerLname = 'lastname_partner';
  static const String Amount = 'amount';
  static const String Purpose = 'purpose';
  static const String Db_name = 'Church2Go.db';

Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }
 
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, Db_name);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }
 
  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE Account ($Id INTEGER PRIMARY KEY," 
          +"$Username TEXT ,$Password TEXT,$Church TEXT,"
          +"$Firstname TEXT ,$Lastname TEXT,$Address TEXT,"
          +"$Email TEXT ,$ContactNo TEXT)");
    await db
        .execute("CREATE TABLE Baptism ($Id INTEGER PRIMARY KEY," 
          +"$UserId TEXT ,$Firstname TEXT,$Lastname TEXT,"
          +"$Age TEXT ,$Address TEXT,$ChildFname TEXT,"
          +"$ChildLname TEXT ,$ChildAge TEXT,$ChildGender TEXT,$DateTime DATETIME,)");
    await db
        .execute("CREATE TABLE Blessing ($Id INTEGER PRIMARY KEY," 
          +"$UserId TEXT ,$Firstname TEXT,$Lastname TEXT,"
          +"$Address TEXT ,$DateTime DATETIME)");
    await db
        .execute("CREATE TABLE Charity ($Id INTEGER PRIMARY KEY," 
          +"$UserId TEXT ,$Firstname TEXT,$Lastname TEXT,"
          +"$Address TEXT ,$Amount TEXT,$Purpose TEXT,$DateTime DATETIME)");
    await db
        .execute("CREATE TABLE Wedding ($Id INTEGER PRIMARY KEY," 
          +"$UserId TEXT ,$Firstname TEXT,$Lastname TEXT,"
          +"$Age TEXT ,$Gender TEXT,$Address TEXT,"
          +"$PartnerFname TEXT ,$PartnerLname TEXT,$DateTime DATETIME)");
  }

  Future<void> deleteTables() async {
    var dbClient = await db;
    await dbClient.delete('Account');
    await dbClient.delete('Baptism');
    await dbClient.delete('Blessing');
    await dbClient.delete('Charity');
    await dbClient.delete('Wedding');
    await dbClient.close();
  }
}