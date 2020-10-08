import 'package:flutter/material.dart';
import '../authentication/sharedresources/shared.dart';

class TakingPhoto extends StatefulWidget {
  @override
  _TakingPhotoState createState() => _TakingPhotoState();
}

class _TakingPhotoState extends State<TakingPhoto> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Search by taking a photo', style: virtualsearchFonts,),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        centerTitle: true,
      ),
          body: SingleChildScrollView(
                child: Column(
            children:<Widget> [
              Container(
                width:width,
                height:height*0.75,
                decoration:takingPhoto ,
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  IconButton(icon: Icon(Icons.flash_on, color:Colors.black,), onPressed: null),
                  SizedBox(width: 20,),
                  Container(
                    decoration:cameraContainer ,
                    child: IconButton(icon: Icon(Icons.camera_alt, color:Colors.white,), onPressed: null),
                    ),
                    SizedBox(width: 20,),
                  IconButton(icon: Icon(Icons.refresh, color:Colors.black,), onPressed: null),
                ],
              ),
            ],
          ),
      ),
    );
  }
}