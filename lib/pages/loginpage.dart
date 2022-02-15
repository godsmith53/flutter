import 'package:flutter/material.dart';
import 'package:flutter1/utils/routes.dart';

class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            Text("Welcome",
            style: TextStyle(
              fontSize:24,
              fontWeight: FontWeight.bold
               ),
               ),
                SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24.0),
              child: Column(children: [
                TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "UserName"
                )
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password"
                )
              ),
               SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed:() {
                Navigator.pushNamed(context, MyRoutes.homeroute);
            }, child: Text("Sign In"),
            style: TextButton.styleFrom(minimumSize: Size(120, 40)),)
              ],
              ),
            ),
          ],
          
        ),
      )
      
    );
  }
}