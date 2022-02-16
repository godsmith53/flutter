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
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
    setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(milliseconds: 500));
                    await Navigator.pushNamed(
                      context, MyRoutes.homeroute);
                      setState(() {
                      changeButton=false;
                    });
  }
  }
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                  validator: (String?value){
                    if(value!.isEmpty){
                      return "Username cannot be empty";
                    }
                    return null;
                  } ,
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
                  ),
                  validator: (String? value){
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }else if(value.length<6){
                      return "Password length should be atleast 6";
                    }
                    return null;
                  } ,
                ),
                 SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(changeButton?50: 8),
                child: InkWell(
                  onTap: () =>moveToHome(context),
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
                     
                  ),
                ),
              ),
          
                ],
                ),
              ),
            ],
            
          ),
        ),
      )
      
    );
  }
}