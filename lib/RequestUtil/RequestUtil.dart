import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:church2go/Model/wedding.dart';
import 'package:church2go/Model/baptism.dart';
import 'package:church2go/Model/blessing.dart';
import 'package:church2go/Model/confirmation.dart';
import 'package:church2go/Model/charity.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
abstract class RequestMethod{

}

class RequestUtl implements RequestMethod{
  PrefUtil pref;

  Future<String> login(String username,String password) async {
    var request = await http.get('https://nikkiyan.000webhostapp.com/User/getData?username='+username+'&password='+password);
    if(request.statusCode == 200){
      if(request.body.isNotEmpty){
        List jsonParse = json.decode(request.body);
        pref.setId(jsonParse[0]['id']);
        pref.setUsername(jsonParse[0]['username']);
        return 'not null';
      } else{ 
        return 'null';
        } 
    } else {
      return('No Connection');
    }
  }
  Future<bool> register(String username,String password) async {
    var request = await http.post('https://nikkiyan.000webhostapp.com/User/',
                        body: { 'username':username,'password':password});
    return request.statusCode == 200 ? true : false ;
  }

  Future<bool> wedding(Wedding wedding) async { 
    var request = await http.post('https://nikkiyan.000webhostapp.com/Wedding',
                        body:{
                        'user_id':wedding.userid,
                        'firstname':wedding.firstname,
                        'lastname':wedding.lastname,
                        'age':wedding.age,
                        'gender':wedding.gender,
                        'address':wedding.address,
                        'firstname_partner':wedding.firstnamepartner,
                        'lastname_partner':wedding.lastnamepartner,
                        });
    return request.statusCode == 200 ? true : false ;
  }

  Future<bool> baptism(BaptismM baptism) async { 
    var request = await http.post('https://nikkiyan.000webhostapp.com/Baptism',
                        body:{
                        'user_id':baptism.userid,
                        'firstname':baptism.firstname,
                        'lastname':baptism.lastname,
                        'age':baptism.age,
                        'address':baptism.address,
                        'childFname':baptism.childFname,
                        'childLname':baptism.childLname,
                        'childAge':baptism.childAge,
                        'chilldGender':baptism.chilldGender,
                        });
    return request.statusCode == 200 ? true : false ;
  }

  Future<bool> confirmation(Confirmation confirmation) async { 
    var request = await http.post('https://nikkiyan.000webhostapp.com/Confirmation',
                        body:{
                        'user_id':confirmation.userid,
                        'firstname':confirmation.firstname,
                        'lastname':confirmation.lastname,
                        'age':confirmation.age,
                        'address':confirmation.address,
                        'gender':confirmation.gender,
                        'participantFname':confirmation.participantFname,
                        'participantLname':confirmation.participantLname,
                        });
    return request.statusCode == 200 ? true : false ;
  }

  Future<bool> blessing(Blessing blessing) async { 
    var request = await http.post('https://nikkiyan.000webhostapp.com/Blessing',
                        body:{
                        'user_id':blessing.userid,
                        'firstname':blessing.firstname,
                        'lastname':blessing.lastname,
                        'address':blessing.address,
                        });
    return request.statusCode == 200 ? true : false ;
  }

  Future<bool> charity(Charity charity) async { 
    var request = await http.post('https://nikkiyan.000webhostapp.com/Charity',
                        body:{
                        'user_id':charity.userid,
                        'firstname':charity.firstname,
                        'lastname':charity.lastname,
                        'address':charity.address,
                        'amount':charity.amount,
                        'purpose':charity.purpose,
                        });
    return request.statusCode == 200 ? true : false ;
  }
}