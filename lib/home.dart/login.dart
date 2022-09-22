
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:week4/home.dart/afterlogin/logedscreen.dart';
import 'package:week4/home.dart/loged_.dart';
import 'package:week4/home.dart/sample.dart';
import 'package:week4/main.dart';

class login extends StatefulWidget {
 login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _username =TextEditingController();

  final _password =TextEditingController();

  final _formkey = GlobalKey<FormState>();

  bool _texttruefalse =true;

  @override
  Widget build(BuildContext context) {
    
    
        return Scaffold(
        
          body :Center(
            child:Padding(
              padding: const EdgeInsets.only(right: 30,left: 30, bottom: 10),
              child: Form(
               key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                    validator: (value) {
                     if(value==null||value.isEmpty){
                       return "passwoed deos't match";
                     }
                     else if( value.length<6||value.length>10){
                      return "minimum legth is 6 and max length is 10";            
                     }
                     else{
                       return null;
                     }
                                },
                     controller: _username,
                           decoration: const InputDecoration(
                          hintText: "user name",
                          border:  OutlineInputBorder(),
                          
                           ),
      
                      ),
                  SizedBox(height: 30,),
                
                      
              
             
               TextFormField(
                validator: (value) {
               if(value==null||value.isEmpty){
               return "passwoed deos't match";
               }
               else if( value.length<6||value.length>10){
               return "minimum legth is 6 and max length is 10";       
             } else{
                           return null;
             }
             },
            controller: _password,
            
             decoration: InputDecoration(
            hintText: "password",
            border: OutlineInputBorder(),
            ),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextButton(onPressed:(){ 
        
           if(_formkey.currentState!.validate()){
              validatin(context);
           }
           else{
            print('data emty');
           }
           }
            , child:Text('LOGIN') ),
         )
     ]
                )     
      ),
      ),
      ),
      );
      
      
    
    
  }

  void validatin(BuildContext context)async {
  final _username1=_username.text;
  final _password1 =_password.text;
  if(  _password1==_username1){


    final _share_ps= await SharedPreferences.getInstance();
      await _share_ps.setBool(save_data,true);       
    
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context1){
return logedscreen();
}));


  }
 else{
      wrong(context);
  }
  }

    void wrong (BuildContext context2)async{
   String erer = "password's deos't match";
      ScaffoldMessenger.of(context2)
      .showSnackBar(SnackBar(content: Text(erer),),);
    }
}

