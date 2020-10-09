import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class PromoInputCode extends StatefulWidget {
  @override
  _PromoInputCodeState createState() => _PromoInputCodeState();
}

class _PromoInputCodeState extends State<PromoInputCode> {
  TextEditingController controller = TextEditingController();

  void _showBottomSheet(BuildContext context) {
    setState(() {
      controller.text = "mypromocode2020";
    });
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              Config.xMargin(context, width: 10),
            ),
            topRight: Radius.circular(
              Config.xMargin(context, width: 10),
            ),
          ),
        ),
        context: context,
        builder: (ccontext) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  Config.xMargin(context, width: 10),
                ),
                topRight: Radius.circular(
                  Config.xMargin(context, width: 10),
                ),
              ),
            ),
            child: SingleChildScrollView(child: ShowBottomPromo()),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Config.xMargin(context, width: 4)),
      child: Column(
        children: [
          Container(
            child: Row(children: [
              Container(
                width: Config.xMargin(context, width: 80),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: TextField(
                    controller: controller,
                    onChanged: (String val) => val,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Enter promo code"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _showBottomSheet(context),
                child: Container(
                    width: Config.xMargin(context, width: 12),
                    height: Config.yMargin(context, height: 12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 5),
                            blurRadius: 30,
                          )
                        ]),
                    child: Icon(Icons.arrow_forward,
                        color: Colors.white,
                        size: Config.yMargin(context, height: 5))),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class BottomSheetPromo extends StatefulWidget {
  @override
  _BottomSheetPromoState createState() => _BottomSheetPromoState();
}

class _BottomSheetPromoState extends State<BottomSheetPromo> {
  _PromoInputCodeState _promoInputCode = _PromoInputCodeState();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: Config.yMargin(context, height: 15),
        padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
        color: Colors.white,
        margin: EdgeInsets.all(Config.yMargin(context, height: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Config.yMargin(context, height: 15),
              width: Config.yMargin(context, height: 15),
              padding: EdgeInsets.all(
                Config.xMargin(context, width: 2),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(children: [
                  Text(
                    "10",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Config.xMargin(context, width: 10),
                        color: Colors.white),
                  ),
                  SizedBox(width: Config.xMargin(context, width: 1.5)),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "%",
                          style: TextStyle(
                              fontSize: Config.xMargin(context, width: 3.5),
                              color: Colors.white),
                        ),
                        Text(
                          "off",
                          style: TextStyle(
                              fontSize: Config.xMargin(context, width: 4),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ])
                ]),
              ),
              color: Colors.red,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal offfer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Config.yMargin(context, height: 2),
                ),
                Text("mypromocode2020"),
              ],
            ),
            Column(
              children: [
                Text(
                  "6 days to go",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Config.yMargin(context, height: 2),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _promoInputCode.controller.text = "10";
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: Config.yMargin(context, height: 6),
                      width: Config.xMargin(context, width: 20),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                              Config.xMargin(context, width: 10))),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Apply",
                              style: TextStyle(color: Colors.white))),
                    )),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

// Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         ListTile(

//         )
//       ],
//     );

class ShowBottomPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Config.yMargin(context, height: 5)),
        Center(
          child: Container(
            width: Config.xMargin(context, width: 20),
            height: Config.yMargin(context, height: 1.5),
            decoration: BoxDecoration(
                color: Color(0xff9B9B9B),
                borderRadius:
                    BorderRadius.circular(Config.xMargin(context, width: 2.5))),
          ),
        ),
        SizedBox(height: Config.yMargin(context, height: 5)),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Config.xMargin(context, width: 5)),
          child: Text(
            "Your Promo Codes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Config.xMargin(context, width: 5.5),
            ),
          ),
        ),
        PromoInputCode(),
        BottomSheetPromo(),
        BottomSheetPromo(),
        BottomSheetPromo()
      ],
    );
  }
}
