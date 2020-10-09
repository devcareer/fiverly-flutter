import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/components/personal_setting_bootomsheet.dart';
import 'package:flutter/material.dart';

class PersonalSetting extends StatefulWidget {
  @override
  _PersonalSettingState createState() => _PersonalSettingState();
}

class _PersonalSettingState extends State<PersonalSetting> {
  bool isSwitched = false;
  bool isSwitchedOne = false;
  bool isSwitchedTwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff222222),
                    ),
                    color: Color(0xff222222),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.search,
                      color: Color(0xff222222),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
                child: Text(
                  "Settings",
                  style: black(
                    Config.xMargin(context, width: 8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
                child: Text(
                  "Personal Information",
                  style: black(Config.textSize(context, 5)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Config.yMargin(context, height: 1.5),
                    horizontal: Config.yMargin(context, height: 2)),
                child: Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Full name",
                        border: InputBorder.none,
                        hintText: "Enter your name"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Config.yMargin(context, height: 1.5),
                    horizontal: Config.yMargin(context, height: 2)),
                child: Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Date of Birth",
                        border: InputBorder.none,
                        hintText: "13/12/1989"),
                  ),
                ),
              ),
              SizedBox(height: Config.yMargin(context, height: 2)),
              Padding(
                padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password", style: black(Config.textSize(context, 5))),
                    GestureDetector(
                      onTap: () => personalSettingsCardSheet(context),
                      child: Text(
                        "Change",
                        style: TextStyle(color: Color(0xff9B9B9B)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Config.yMargin(context, height: 1)),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Config.yMargin(context, height: 1.5),
                    horizontal: Config.yMargin(context, height: 2)),
                child: Container(
                  height: Config.yMargin(context, height: 10),
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.xMargin(context, width: 5)),
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Address",
                        border: InputBorder.none,
                        hintText: "Enter your address"),
                  ),
                ),
              ),
              // SizedBox(height: Config.yMargin(context, height: 3)),
              Padding(
                padding: EdgeInsets.all(Config.yMargin(context, height: 2)),
                child: Text("Notifications",
                    style: black(Config.textSize(context, 5))),
              ),
              // SizedBox(height: Config.yMargin(context, height: 4)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.yMargin(context, height: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sales", style: black(Config.textSize(context, 4))),
                    Container(
                        width: Config.textSize(context, 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (val) {
                            setState(() {
                              isSwitched = val;
                            });
                          },
                          activeColor: Color(0xff2AA952),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.yMargin(context, height: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New arrivals",
                        style: black(Config.textSize(context, 4))),
                    Container(
                        width: Config.textSize(context, 15),
                        child: Switch(
                          value: isSwitchedOne,
                          onChanged: (val) {
                            setState(() {
                              isSwitchedOne = val;
                            });
                          },
                          activeColor: Color(0xff2AA952),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.yMargin(context, height: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery status changes",
                        style: black(Config.textSize(context, 4))),
                    Container(
                        width: Config.textSize(context, 15),
                        child: Switch(
                          value: isSwitchedTwo,
                          onChanged: (val) {
                            setState(() {
                              isSwitchedTwo = val;
                            });
                          },
                          activeColor: Color(0xff2AA952),
                        ))
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
