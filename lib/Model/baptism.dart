class BaptismM{
  String id,userid,firstname,lastname,age,address,childFname,childLname,childAge,chilldGender,datetime;

  BaptismM(this.id,
           this.userid,
           this.firstname,
           this.lastname,
           this.age,
           this.address,
           this.childFname,
           this.childLname,
           this.childAge,
           this.chilldGender,
           this.datetime);

  Map<String ,dynamic> mapToInsert(){
    var map = <String ,dynamic>{
          'user_id':userid,
          'firstname':firstname,
          'lastname':lastname,
          'age':age,
          'address':address,
          'childFname':childFname,
          'childLname':childLname,
          'childAge':childAge,
          'chilldGender':chilldGender,
          'datetime':datetime,            
    };
    return map;
  }
  Map<String ,dynamic> mapToUpdate(){
    var map = <String ,dynamic>{
          'id':id,
          'user_id':userid,
          'firstname':firstname,
          'lastname':lastname,
          'age':age,
          'address':address,
          'childFname':childFname,
          'childLname':childLname,
          'childAge':childAge,
          'chilldGender':chilldGender,
          'datetime':datetime,            
    };
    return map;
  }
  factory BaptismM.mapToObject(Map<String , dynamic> map){
    return BaptismM(map['id'], 
                    map['user_id'], 
                    map['firstname'], 
                    map['lastname'], 
                    map['age'], 
                    map['address'], 
                    map['childFname'], 
                    map['childLname'], 
                    map['childAge'], 
                    map['chilldGender'], 
                    map['datetime']);
  }
  
}