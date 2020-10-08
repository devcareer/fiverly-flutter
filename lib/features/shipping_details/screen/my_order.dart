import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:fiverly_flutter/cores/util/style.dart';
import 'package:fiverly_flutter/features/shipping_details/bloc/my_order_counter_bloc.dart';
import 'package:fiverly_flutter/features/shipping_details/components/my_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class MyOrderPage extends StatelessWidget {
  final listDetails = List.generate(6, (index) => index);

  @override
  Widget build(BuildContext context) {
    // final usersCubit = context.bloc<UsersCubit>();
    final orderState = MyOrderCounterBloc();
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<MyOrderCounterBloc, MyOrderCounterState>(
              cubit: orderState,
              builder: (context, state) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.arrow_back),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.search,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Config.xMargin(context, width: 4)),
                        child: Text(
                          "My Orders",
                          style: black(
                            Config.xMargin(context, width: 7),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.all(Config.xMargin(context, width: 4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            orderState.state is MyOrderCounterZero
                                ? Container(
                                    width: Config.xMargin(context, width: 30),
                                    height: Config.xMargin(context, width: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                        Config.xMargin(context, width: 5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text("Delivered",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      orderState.add(ZeroEvent());
                                      print(orderState.state);
                                    },
                                    child: Text("Delivered")),
                            orderState.state is MyOrderCounterOne
                                ? GestureDetector(
                                    onTap: () => print("emeka"),
                                    child: Container(
                                      width: Config.xMargin(context, width: 30),
                                      height: Config.xMargin(context, width: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(
                                          Config.xMargin(context, width: 5),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text("Processing",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      orderState.add(OneEvent());
                                      // orderState.add(O);
                                      // BlocProvider.of<MyOrderCounterBloc>(context)
                                      //     .add(OneEvent());
                                      print(orderState.state);
                                    },
                                    child: Text("Processing")),
                            orderState.state is MyOrderCounterTwo
                                ? Container(
                                    width: Config.xMargin(context, width: 30),
                                    height: Config.xMargin(context, width: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                        Config.xMargin(context, width: 5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text("Cancelled",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      orderState.add(TwoEvent());
                                      print(orderState.state);
                                    },
                                    child: Text("Cancelled"))
                          ],
                        ),
                      ),
                      // MyOrderCard(),
                      Column(
                          children:
                              listDetails.map((e) => MyOrderCard()).toList()),
                    ]);
              }),
        ),
      ),
    );
  }
}
