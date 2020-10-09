import 'package:flutter/material.dart';
import '../authentication/sharedresources/shared.dart';

class VirtualSearch extends StatefulWidget {
  @override
  _VirtualSearchState createState() => _VirtualSearchState();
}

class _VirtualSearchState extends State<VirtualSearch> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Virtual search', style: virtualsearchFonts,),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        centerTitle: true,
      ),
          body: SingleChildScrollView(
                child: Column(
            children:<Widget> [
              Container(
                width:width,
                height:height*0.95,
                decoration: virtualImage,
                child: Row(
                  children: [
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        SizedBox(height: 155,),
                        Text('Search for an outfit by',style: virtualTxetFont,),
                        Text('taking a photo or uploading',style: virtualTxetFont,),
                        Text('an image',style: virtualTxetFont,),
                        SizedBox(height: 20.0,),
                        Container(
                      width: 340,
                      decoration: buttonDecoration,
                      child: FlatButton(onPressed:(){}, 
                      child:Text('TAKE A PHOTO', style: buttonColor,),),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 340,
                      decoration:uploadDecoration ,
                      child: FlatButton(onPressed:(){}, 
                      child:Text('UPLOAD AN IMAGE',style:buttonColor),),
                    ),
                      ],
                      ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}