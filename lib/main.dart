import 'package:badgeapi_task/apiservice.dart';
import 'package:badgeapi_task/homescenn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen(),);
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

     
     final email = TextEditingController();
          final password = TextEditingController();
  
  final apiservice = Apiservice();

  bool isloading = false;


  Future<void> handleLogin()async{

        isloading = true;
    
         final response = await apiservice.login(email.text.trim(), password.text.trim(),         
         );
         
       if()






  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
       
       body: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [
              TextField( controller: email, decoration: InputDecoration(hintText: 'email'),),
                            TextField( controller: password, decoration: InputDecoration(hintText: 'email'),),
               ElevatedButton(onPressed: handleLogin, child: Text('login'))
             ],
       )),
      
    );
  }
}