import 'package:flutter/material.dart';
import '../authentication/sharedresources/shared.dart';





class SuccessPage2 extends StatefulWidget {
  @override
  _SuccessPage2State createState() => _SuccessPage2State();
}

class _SuccessPage2State extends State<SuccessPage2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children:<Widget> [
            SizedBox(height:124.0),
              Center(
                child: Container(
                  width: width*0.40 ,
                  height: height*0.40,
                 decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/bag.png"), fit: BoxFit.contain)),
                ),
              ),
            SizedBox(height:20.0),
            Text('Success!',style: fonts1,), 
            Text('Your order will be delivered soon.',style: fonts2,),
            Text('Thank you for choosing our app!',style: fonts2,),
             SizedBox(height: 100.0,),
            Container(
                    width: 340,
                    decoration: buttonDecoration,
                    child: FlatButton(
                      onPressed: () {},
                     child: Text(
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