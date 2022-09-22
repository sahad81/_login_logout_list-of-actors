
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:week4/home.dart/afterlogin/logedscreen.dart';
import 'package:week4/home.dart/loged_.dart';
import 'package:week4/home.dart/login.dart';
import 'package:week4/home.dart/sample.dart';
import 'package:week4/main.dart';

class process extends StatefulWidget {
  const process({Key? key}) : super(key: key);

  @override
  State<process> createState() => _processState();
}

class _processState extends State<process> {
@override
  void initState() {
  checkverifiedornot();
  
    super.initState();
    processfuntion();
  }
     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Image.network('https://cdn.pixabay.com/photo/2016/04/20/08/21/entrepreneur-1340649_960_720.jpg',
        fit: BoxFit.fill),
      )
    );
  }


Future<void>checkverifiedornot()async{
   final _shared_priference= await SharedPreferences.getInstance();
      final user_login_or_not = _shared_priference.getBool(save_data);
      
      if(user_login_or_not==null || user_login_or_not==false){
        login();
      }else
      {
           // ignore: use_build_context_synchronously
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (cnt)=>const logedscreen()));
      
      }

  }
  Future<void> processfuntion() async{
  await Future.delayed(Duration(seconds: 2));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (cnt){
    return login();
    
   }));
   

     }  
}