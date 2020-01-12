class Confirmation{
  String id,userid,firstname,lastname,age,address,gender,participantFname,participantLname,datetime;
  Confirmation(this.id,
                this.userid,
                this.firstname,
                this.lastname,
                this.age,
                this.address,
                this.gender,
                this.participantFname,
                this.participantLname,
                this.datetime,
                );
  Map<String,dynamic> mapToInsert(){
   return <String,dynamic>{
      'userid':userid,
      'firstname':firstname,
      'lastname':lastname,
      'age':age,
      'address':address,
      'gender':gender,
      'participantFname':participantFname,
      'participantLname':participantLname,
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
      'address':address,
      'gender':gender,
      'participantFname':participantFname,
      'participantLname':participantLname,
      'datetime':datetime,
    };
  }
  
  factory Confirmation.mapToObject(Map<String, dynamic> map){
    return new Confirmation(
      map['id'], 
      map['userid'], 
      map['firstname'], 
      map['lastname'], 
      map['age'], 
      map['address'], 
      map['gender'], 
      map['participantFname'], 
      map['participantLname'], 
      map['datetime']
      );
  }
}