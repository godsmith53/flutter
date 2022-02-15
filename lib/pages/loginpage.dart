import 'package:flutter/material.dart';
import 'package:flutter1/utils/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name="";
  bool changeButton=false;
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
            Text("Welcome $name",
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
                ),
                onChanged: (value){
                  name=value;
                  setState(() {
                    
                  });
                },
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
            InkWell(
              onTap: ()async {
                setState(() {
                  changeButton=true;
                });
                await Future.delayed(Duration(milliseconds: 500));
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                alignment: Alignment.center,
                width: changeButton?50: 150,
                height: 50,
               
                child:changeButton?Icon(Icons.done,color: Colors.white): Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton?50: 8)
                  ),
              ),
            ),
          //  ElevatedButton(onPressed:() {
            //    Navigator.pushNamed(context, MyRoutes.homeroute);
           // }, child: Text("Sign In"),
           // style: TextButton.styleFrom(minimumSize: Size(120, 40)),)
              ],
              ),
            ),
          ],
          
        ),
      )
      
    );
  }
}