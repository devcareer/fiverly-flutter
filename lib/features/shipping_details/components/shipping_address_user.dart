import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

class UserInfoShippingAddress extends StatefulWidget {
  @override
  _UserInfoShippingAddressState createState() =>
      _UserInfoShippingAddressState();
}

class _UserInfoShippingAddressState extends State<UserInfoShippingAddress> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Config.xMargin(context, width: 3.5)),
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? Config.yMargin(context, height: 25)
          : Config.xMargin(context, width: 30),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(Config.xMargin(context, width: 2.6)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Config.xMargin(context, width: 4)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jane Doe",
                    style: TextStyle(
                      fontSize: Config.xMargin(context, width: 6),
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Text("Edit",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: Config.xMargin(context, width: 4),
                        )),
                  )
                ]),
          ),
          SizedBox(
            height: Config.yMargin(context, height: 2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Config.xMargin(context, width: 4)),
            child: Text("Newbridge Court"),
          ),
          SizedBox(
            height: Config.yMargin(context, height: 1.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Config.xMargin(context, width: 4)),
            child: Text("Chino Hills, 91709, United States"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: Colors.black,
                onChanged: (check) {
                  setState(() {
                    _value = check;
                  });
                },
                tristate: true,
                value: _value,
              ),
              Expanded(child: Text("Use as default payment method"))
            ],
          ),
        ]),
      ),
    );
  }
}
