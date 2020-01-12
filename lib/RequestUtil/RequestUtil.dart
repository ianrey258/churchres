import 'package:church2go/Model/account.dart';
import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:church2go/Model/wedding.dart';
import 'package:church2go/Model/baptism.dart';
import 'package:church2go/Model/blessing.dart';
import 'package:church2go/Model/confirmation.dart';
import 'package:church2go/Model/charity.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class RequestMethod{
  login(String username,String password,BuildContext context);
  wedding(Wedding wedding,BuildContext context);
  baptismM(BaptismM baptism,BuildContext context);
  confirmation(Confirmation confirmation,BuildContext context);
  blessing(Blessing blessing,BuildContext context);
  account(Account account,BuildContext context);
  charity(Charity charity,BuildContext context);
  showLoading(BuildContext context);
}

class RequestUtl implements RequestMethod{
  PrefUtil pref = PrefUtil();

  Future<String> login(String username,String password,BuildContext context) async {
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.get('https://nikkiyan.000webhostapp.com/User/getData?username='+username+'&password='+password);
      if(request.statusCode == 200){
        if(request.body.length>3){
          List jsonParse = json.decode(request.body);
          Map map = jsonParse.asMap();
          await pref.setId(map[0]['id']);
          await pref.setFirstName(map[0]['firstname']);
          await pref.setLastName(map[0]['lastname']);
          await pref.setChurch(map[0]['church']);
          await pref.setEmail(map[0]['email']);
          // print(map[0]);
          // Account account = Account.mapToObject(map[0]);
          // print(account.id);
          // await _accountDbUtil.insertAccount(account);
          Navigator.pop(context);
          return 'not null';
        } else{ 
          return 'null';
          } 
      } else {
        return('No Connection');
      }
    } finally {
      client.close();
    }
  }

  Future<bool> wedding(Wedding wedding,BuildContext context) async { 
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/Wedding',body:wedding.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<bool> baptismM(BaptismM baptism,BuildContext context) async { 
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/Baptism',body: baptism.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<bool> confirmation(Confirmation confirmation,BuildContext context) async { 
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/Confirmation',body: confirmation.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<bool> blessing(Blessing blessing,BuildContext context) async { 
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/Blessing',body: blessing.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<bool> charity(Charity charity,BuildContext context) async {
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/Charity',body: charity.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<bool> account(Account account,BuildContext context) async { 
    showLoading(context);
    var client = http.Client();
    try{
      var request = await client.post('https://nikkiyan.000webhostapp.com/User',body: account.mapToInsert());
      Navigator.pop(context);
      return request.statusCode == 200 ? true : false ;
    } finally {
      client.close();
    }
  }

  Future<Widget> showLoading(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      child: AlertDialog(
        elevation: 5,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Text('Loading   '),
            ),
            Container(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      )
    );
  }

  Future<bool> showResultDialog(BuildContext context,String msg){
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          elevation: 5.0,
          content: Container(
            height: MediaQuery.of(context).size.height*.04,
            child: Center(child: Text(msg,style: TextStyle(fontSize: 30),))
            ),
          actions: <Widget>[
            FlatButton(
              child: Container(child: Text('Ok'),),
              onPressed: (){Navigator.pop(context);},
            ),
          ],
        );
      }
    );
  }
}