import 'package:flutter/material.dart';
import 'package:fixing/features/authentication/sharedresources/shared.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 106,),
              Container(
                child: Row(
                  children:<Widget> [
                    SizedBox(width: 14,),
                    Text('Login', style: fonts1,),
                  ],
                  ),
              ),
              Form(
                child: Column(
                  children:<Widget> [
                    SizedBox(height:50,),
                    Container(
                      width: 320,
                      decoration: containerDecoration,
                      child: TextFormField( decoration: textInputDecorations.copyWith(hintText: 'Email',),)),
                    //next field
                    SizedBox(height: 8,),
                    Container(
                      width: 320,
                      decoration: containerDecoration,
                      child: TextFormField( decoration: textInputDecorations.copyWith(hintText: 'Password'),)),
                    //next field
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Row(
                children:<Widget> [
                  SizedBox(width: 150,),
                  Text('Forgot your password?', style: fonts2,),
                Icon(Icons.arrow_forward, color: Colors.red,),
                ],
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: 340,
                  decoration: buttonDecoration,
                  child: FlatButton(onPressed:(){}, 
                  child:Text('Login', style: buttonColor,),),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('Or sign up with social account', style: fonts2,),
                ),
                SizedBox(height: 80.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Container(
                        width: 92.0, height: 64.0,
                          decoration: containerIcons,
                          child:  IconButton(
               icon: CIcon(IconMoon.icon_google2,color: Color(0xff4285f4),), 
               onPressed: () { print("Pressed"); }
                 ),
                   ),
                   //next Icon
                   SizedBox(width: 10,),
                   Container(
                        width: 92.0, height: 64.0,
                          decoration: containerIcons,
                          child:  IconButton(
               icon: CIcon(IconMoon.icon_facebook2, color:Color(0xff3b5998),), 
               onPressed: () { print("Pressed"); }
                 ),
                   ),
                    ],
                  ),
            ],
            ),
        ),
    );
  }
}