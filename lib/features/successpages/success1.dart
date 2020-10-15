import 'package:flutter/material.dart';
import '../authentication/sharedresources/shared.dart';





class SuccessPage1 extends StatefulWidget {
  @override
  _SuccessPage1State createState() => _SuccessPage1State();
}

class _SuccessPage1State extends State<SuccessPage1> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width:width,
        height: height,
        decoration:BoxDecoration(
          image: DecorationImage(image:AssetImage("images/backgroundpic.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children:<Widget> [
            SizedBox(height:80.0),
            Text('Success!',style: fonts1,),
            SizedBox(height: 5.0,),
            Text('Your order will be delivered soon.',style: fonts2,),
            Text('Thank you for choosing our app!',style: fonts2,),
            SizedBox(height: 10.0,),
            Container(
                    width: 200,
                    decoration: buttonDecoration,
                    child: FlatButton(
                      onPressed: () {},
                     child:  Text(
                    'Continue Shopping',
                        style: buttonColor,
                      ),
                    ),
                  ),
          ],
          ),
      ),
    );
  }
}
