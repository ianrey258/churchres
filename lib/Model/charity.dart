class Charity{
  String id,userid,firstname,lastname,address,amount,purpose,datetime;
  Charity(this.id,
           this.userid,
           this.firstname,
           this.lastname,
           this.address,
           this.amount,
           this.purpose,
           this.datetime
           );

  Map<String,dynamic> mapToInsert(){
    return <String,dynamic>{
        'userid':userid,
        'firstname':firstname,
        'lastname':lastname,
        'address':address,
        'amount':amount,
        'purpose':purpose,
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
        'amount':amount,
        'purpose':purpose,
        'datetime':datetime,
      };
    }
    
    factory Charity.mapToObject(Map<String, dynamic> map){
      return new Charity(
        map['id'], 
        map['userid'], 
        map['firstname'], 
        map['lastname'], 
        map['address'], 
        map['amount'], 
        map['purpose'], 
        map['datetime'], 
        );
    }
}