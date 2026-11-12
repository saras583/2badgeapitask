class Model {

  String email;

  String password;

   
   Model({
    required this.email,
    required this.password
   });

  factory Model.fromJson(Map<String,dynamic> json){
    
    return Model(email: json['email'], password: json['pass']);



  }

   Map<String,dynamic>toJson(){
    return {
      'email': email,
      'password': password
    };
   }


}