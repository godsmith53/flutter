import 'package:flutter/material.dart';
import 'package:flutter1/pages/homepage.dart';
import 'package:flutter1/pages/loginpage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(context)=>loginpage(),
        "/home":(context)=>homepage(),
        "/login":(context)=>loginpage(),
      },

    );
  }
}