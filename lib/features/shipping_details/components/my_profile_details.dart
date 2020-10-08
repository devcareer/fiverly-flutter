import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/screen_change.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/components/my_profile_data.dart';
import 'package:fiverly_flutter/features/shipping_details/screen/my_order.dart';
import 'package:flutter/material.dart';

class UserProfileOptions extends StatelessWidget {
  List<Widget> _dataUser = [];
  List<Widget> _dataList() {
    for (var i = 0; i < data.length; i++) {
      _dataUser.add(DataDetails(details: data[i], index: i));
    }
    return _dataUser;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _dataList(),
        // data.map((element) => DataDetails(details: element)).toList()
      ),
    );
  }
}

class DataDetails extends StatelessWidget {
  final Map<String, dynamic> details;
  final lastOption = data.length - 1;
  int index;

  DataDetails({Key key, this.details, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Config.xMargin(context, width: 4)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  details["title"],
                  style: black(
                    Config.xMargin(context, width: 4.5),
                  ),
                ),
                SizedBox(height: Config.xMargin(context, width: 1.9)),
                Text(
                  details["state"],
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                  ),
                )
              ]),
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () => changeScreen(context, MyOrderPage())),
            ],
          ),
          // SizedBox(height: Config.xMargin(context, width: 1.9)),
          lastOption != index ? Divider() : Container(),
        ],
      ),
    );
  }
}
