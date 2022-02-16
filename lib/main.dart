import 'package:flutter/material.dart';
import 'package:flutter1/pages/homepage.dart';
import 'package:flutter1/pages/loginpage.dart';
import 'package:flutter1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
       ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroute,  
      routes: {
        "/":(context)=>loginpage(),
           MyRoutes.homeroute:(context)=>homepage(),
              MyRoutes.loginRoute:(context)=>loginpage(),
      },

    );
  }
}