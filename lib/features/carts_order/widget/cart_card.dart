import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class CartCard extends StatefulWidget {
  final index;

  const CartCard({Key key, this.index}) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  var addIndex = 1;

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(
                height: Config.yMargin(context, height: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Add to Favorite");
                          Navigator.pop(context);
                        },
                        child: Text("Add to Favorite"),
                      ),
                      Divider(),
                      GestureDetector(
                        onTap: () {
                          print("Delete from the list");
                          Navigator.pop(context);
                        },
                        child: Text("Delete from the list"),
                      )
                    ]),
              ),
            );
          });
    }

<<<<<<< HEAD
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: Config.xMargin(context, width: 1)),
      child: Card(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                child: widget.index % 2 == 0
                    ? Image.asset(
                        "images/bags.png",
                        width: Config.xMargin(context, width: 25),
                        height: Config.yMargin(context, height: 20),
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        "images/image.png",
                        width: Config.xMargin(context, width: 25),
                        height: Config.yMargin(context, height: 20),
                        fit: BoxFit.cover,
                      ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 2),
                    vertical: Config.yMargin(context, height: 1)),
                width: Config.xMargin(context, width: 65),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sport Dress",
                              style: TextStyle(
                                  fontSize: Config.xMargin(context, width: 4),
                                  fontWeight: FontWeight.bold),
                            ),
                            // Icon(
                            GestureDetector(
                              child: Icon(Icons.more_vert),
                              onTap: () {
                                _showDialog();
                              },
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Color : ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Gray',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Config.xMargin(context, width: 3.0),
=======
    return Card(
      color: Colors.white,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              child: widget.index / 2 == 0.0
                  ? Image.asset(
                      "assets/images/bags.png",
                      width: Config.xMargin(context, width: 25),
                      
                    )
                  : Image.asset(
                      "assets/images/image.png",
                      width: Config.xMargin(context, width: 25),
                      fit: BoxFit.fitHeight,
                      height: 125,
                      
                    ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: Config.xMargin(context, width: 65),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sport Dress",
                            style: TextStyle(
                                fontSize: Config.xMargin(context, width: 4),
                                fontWeight: FontWeight.bold),
                          ),
                          // Icon(
                          GestureDetector(
                            child: Icon(Icons.more_vert),
                            onTap: () {
                              _showDialog();
                            },
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Color : ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Gray',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
>>>>>>> d87cc2e5020e11230f2240417fafd25c8a780152
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Size ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' M',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                      SizedBox(height: Config.yMargin(context, height: 5)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: Config.xMargin(context, width: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      width: Config.xMargin(context, width: 6),
                                      height:
                                          Config.yMargin(context, height: 6),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 5),
                                              blurRadius: 30,
                                            )
                                          ]),
                                      child: Icon(
                                        Icons.remove,
                                        size: Config.xMargin(context, width: 4),
                                      ),
                                    ),
                                    onTap: () {
                                      if (addIndex > 1) {
                                        setState(() {
                                          addIndex--;
                                        });
                                      }

                                      print("minus");
                                      print(addIndex);
                                    },
                                  ),
                                  Text(
                                    "$addIndex",
                                    style: TextStyle(
                                        fontSize:
                                            Config.xMargin(context, width: 4),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: Config.xMargin(context, width: 6),
                                      height:
                                          Config.yMargin(context, height: 6),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 5),
                                              blurRadius: 30,
                                            )
                                          ]),
                                      child: Icon(
                                        Icons.add,
                                        size: Config.xMargin(context, width: 4),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        addIndex++;
                                      });
                                      print("minus");
                                      print(addIndex);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "43\$",
                              style: TextStyle(
                                  fontSize: Config.xMargin(context, width: 4.5),
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ]),
              ),
            ]),
      ),
    );
  }
}
