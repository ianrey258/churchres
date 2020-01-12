
class Account{
  String id,username,password,church,firstname,lastname,address,email,contactNo;

  Account(this.id,
          this.username,
          this.password,
          this.church,
          this.firstname,
          this.lastname,
          this.address,
          this.email,
          this.contactNo);

  // Account ({this.id,
  //         this.username,
  //         this.password,
  //         this.church,
  //         this.firstname,
  //         this.lastname,
  //         this.address,
  //         this.email,
  //         this.contactNo});

  Map<String,dynamic> mapToInsert(){
   return <String,dynamic>{
      'username':username,
      'password':password,
      'church':church,
      'firstname':firstname,
      'lastname':lastname,
      'address':address,
      'email':email,
      'contactNo':contactNo,
    };
  }
  
  Map<String,dynamic> mapToUpdate(){
   return <String,dynamic>{
      'id':id,
      'username':username,
      'password':password,
      'church':church,
      'firstname':firstname,
      'lastname':lastname,
      'address':address,
      'email':email,
      'contactNo':contactNo,
    };
  }
  
  factory Account.mapToObject(Map<String, dynamic> map){
    return new Account(
      map['id'], 
      map['username'], 
      map['password'], 
      map['church'], 
      map['firstname'], 
      map['lastname'], 
      map['address'], 
      map['email'], 
      map['contactNo']
    );
  }
}



