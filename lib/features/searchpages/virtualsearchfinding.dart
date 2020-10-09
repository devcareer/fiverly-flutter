import 'package:flutter/material.dart';
import '../authentication/sharedresources/shared.dart';
import '../authentication/sharedresources/shared.dart';

class SearchFinding extends StatefulWidget {
  @override
  _SearchFindingState createState() => _SearchFindingState();
}

class _SearchFindingState extends State<SearchFinding> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
          body: SingleChildScrollView(
                child: Column(
            children:<Widget> [
              SizedBox(height: height* 0.30,),
              Center(
                child: Container(
                child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  IconButton(icon: Icon(Icons.search, color:Color(0xffdb3022,),size:45,), onPressed: null),
                ],
              ),
                ),
              ),
              SizedBox(height: 20.0,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: width* 0.18,),
                      Center(
                        child: Column(
                         children:<Widget> [
                         Text('Finding similar',style: fonts1,),
                         Text('results...',style: fonts1,),
                        ],
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



 