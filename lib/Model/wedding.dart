
class Wedding{
  String id,userid,firstname,lastname,age,gender,address,firstnamepartner,lastnamepartner,datetime;
  Wedding(this.id,
           this.userid,
           this.firstname,
           this.lastname,
           this.age,
           this.gender,
           this.address,
           this.firstnamepartner,
           this.lastnamepartner,
           this.datetime
           );

  Map<String,dynamic> mapToInsert(){
   return <String,dynamic>{
      'userid':userid,
      'firstname':firstname,
      'lastname':lastname,
      'age':age,
      'gender':gender,
      'address':address,
      'firstnamepartner':firstnamepartner,
      'lastnamepartner':lastnamepartner,
      'datetime':datetime,
    };
  }
  
  Map<String,dynamic> mapToUpdate(){
   return <String,dynamic>{
      'id':id,
      'userid':userid,
      'firstname':firstname,
      'lastname':lastname,
      'age':age,
      'gender':gender,
      'address':address,
      'firstnamepartner':firstnamepartner,
      'lastnamepartner':lastnamepartner,
      'datetime':datetime,
    };
  }
  
  factory Wedding.mapToObject(Map<String, dynamic> map){
    return new Wedding(
      map['id'], 
      map['userid'], 
      map['firstname'], 
      map['lastname'], 
      map['age'], 
      map['gender'], 
      map['address'], 
      map['firstnamepartner'], 
      map['lastnamepartner'],
      map['datetime']
      );
  }
}