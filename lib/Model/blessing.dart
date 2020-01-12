class Blessing{
  String id,userid,firstname,lastname,address,datetime;
  
  Blessing(this.id,
            this.userid,
            this.firstname,
            this.lastname,
            this.address,
            this.datetime,
            );
  
  Map<String,dynamic> mapToInsert(){
   return <String,dynamic>{
      'userid':userid,
      'firstname':firstname,
      'lastname':lastname,
      'address':address,
      'datetime':datetime,
    };
  }
  
  Map<String,dynamic> mapToUpdate(){
   return <String,dynamic>{
      'id':id,
      'userid':userid,
      'firstname':firstname,
      'lastname':lastname,
      'address':address,
      'datetime':datetime,
    };
  }
  
  factory Blessing.mapToObject(Map<String, dynamic> map){
    return new Blessing(
      map['id'], 
      map['userid'], 
      map['firstname'], 
      map['lastname'], 
      map['address'], 
      map['datetime'],
      );
  }
}