import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:flutter/material.dart';

class PaymentCardSection extends StatefulWidget {
  @override
  _PaymentCardSectionState createState() => _PaymentCardSectionState();
}

class _PaymentCardSectionState extends State<PaymentCardSection> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.condition(context)
          ? Config.yMargin(context, height: 45)
          : Config.xMargin(context, width: 54),
      child: Column(children: [
        Container(
          height: Config.condition(context)
              ? Config.yMargin(context, height: 36.8)
              : Config.xMargin(context, width: 45),
          margin: EdgeInsets.symmetric(
              horizontal: Config.xMargin(context, width: 2)),
          color: Colors.black38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, width: 6.5)),
                child: Image.asset("images/chip.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("****", style: white(Config.xMargin(context, width: 5))),
                  Text("****", style: white(Config.xMargin(context, width: 5))),
                  Text("****", style: white(Config.xMargin(context, width: 5))),
                  Text("3947", style: white(Config.xMargin(context, width: 5))),
                  SizedBox(width: Config.xMargin(context, width: 20))
                ],
              ),
              SizedBox(height: Config.yMargin(context, height: 1.5)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Card Holder Name",
                            style: white(Config.xMargin(context, width: 2.5))),
                        SizedBox(height: Config.xMargin(context, width: 1.5)),
                        Text("Jane Doe",
                            style: white(Config.xMargin(context, width: 3.5)))
                      ],
                    ),
                    SizedBox(width: Config.xMargin(context, width: 15)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expiry Date",
                            style: white(Config.xMargin(context, width: 2.5))),
                        SizedBox(height: Config.xMargin(context, width: 1.5)),
                        Text("05/23",
                            style: white(Config.xMargin(context, width: 3.5)))
                      ],
                    ),
                    SizedBox(width: Config.xMargin(context, width: 5)),
                    Image.asset("images/mastercard.png")
                  ]),
            ],
          ),
        ),
        Container(
            child: Row(
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
            Text("Use as default payment method")
          ],
        ))
      ]),
    );
  }
}

// Config.xMargin(context, width: 5)

// Container(
//       margin: EdgeInsets.all(Config.xMargin(context, width: 2.5)),
//       height: Config.condition(context)
//           ? Config.yMargin(context, height: 40)
//           : Config.xMargin(context, width: 50),
//       color: Colors.black54,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: Config.xMargin(context, width: 6.5)),
//             child: Image.asset("images/chip.png"),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("****", style: white(Config.xMargin(context, width: 5))),
//               Text("****", style: white(Config.xMargin(context, width: 5))),
//               Text("****", style: white(Config.xMargin(context, width: 5))),
//               Text("3947", style: white(Config.xMargin(context, width: 5))),
//               SizedBox(width: Config.xMargin(context, width: 20))
//             ],
//           ),
//           SizedBox(height: Config.yMargin(context, height: 1.5)),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Card Holder Name",
//                         style: white(Config.xMargin(context, width: 2.5))),
//                     SizedBox(height: Config.xMargin(context, width: 1.5)),
//                     Text("Jane Doe",
//                         style: white(Config.xMargin(context, width: 3.5)))
//                   ],
//                 ),
//                 SizedBox(width: Config.xMargin(context, width: 15)),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Expiry Date",
//                         style: white(Config.xMargin(context, width: 2.5))),
//                     SizedBox(height: Config.xMargin(context, width: 1.5)),
//                     Text("05/23",
//                         style: white(Config.xMargin(context, width: 3.5)))
//                   ],
//                 ),
//                 SizedBox(width: Config.xMargin(context, width: 5)),
//                 Image.asset("images/mastercard.png")
//               ]),
//           Container(
//               child: Row(
//             children: [
//               Checkbox(
//                 activeColor: Colors.black,
//                 onChanged: (check) {
//                   setState(() {
//                     _value = check;
//                   });
//                 },
//                 tristate: true,
//                 value: _value,
//               ),
//               Text("Use as default payment method")
//             ],
//           ))
//         ],
//       ),
//     );
