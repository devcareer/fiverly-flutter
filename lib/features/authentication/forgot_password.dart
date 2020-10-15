import 'package:flutter/material.dart';
import 'sharedresources/shared.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 106,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Forgot Password',
                      style: fonts1,
                    ),
                  ],
                ),
              ),
              //Text instructions to reset password
              SizedBox(
                height: 47,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 17.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Please, enter your email address.You will receive',
                        style: fonts2,
                      ),
                      Text(
                        'a link to create a new password via email',
                        style: fonts2,
                      validator: (value) => value.isEmpty
                          ? "Not valid email.Should your@email.com"
                          : null,
                      onChanged: (value) {
                        setState(() => email = value);
                      },
                    ),
                  ),
                  //next field
                  SizedBox(
                    height: 55.0,
                  ),
                  Container(
                    width: 340,
                    decoration: buttonDecoration,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: buttonColor,
                      ),
                    ],
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 320,
                      decoration: containerDecoration,
                      child: TextFormField(
                        decoration: textInputDecorations.copyWith(
                          hintText: 'Email',
                        ),
                        validator: (value) =>
                        value.isEmpty ? "Not valid email.Should your@email.com" : null,
                        onChanged: (value) {
                          setState(() => email = value);
                        },
                      ),
                    ),
                    //next field
                    SizedBox(
                      height: 55.0,
                    ),
                    Container(
                      width: 340,
                      decoration: buttonDecoration,
                      child: FlatButton(
                        onPressed: () {},
                       child:  Text(
                          'Send',
                          style: buttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
