import 'dart:convert';

import 'package:badgeapi_task/model.dart';
import 'package:dio/dio.dart';

class Apiservice {

 
 final Dio dio = Dio(
   
   BaseOptions(
      baseUrl: ' https://dummyjson.com/auth/login',
      
      contentType: 'Content-Type' 'application/json'
      
   )
 );

 Future<Map<String,dynamic>> login(String email,String password)async{

    final response = await dio.post('auth/login', data: {
      'email': email,
      'password': password
    });

    List data = response.data;

    return response.data;
    
     
     

    
    


 }

}