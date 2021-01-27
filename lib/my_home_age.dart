import 'package:flutter/material.dart';

import 'check_express_page.dart';
import 'home_page.dart';
import 'my_page.dart';
import 'order_page.dart';
import 'send_express_page.dart';
import 'widgets/radius_inkwell_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<String> titles = ["首页", "查快递", "寄快递", "订单", "我的"];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(index: selectedIndex, children: [
          HomePage(),
          CheckExpressPage(),
          SendExpressPage(),
          OrderPage(),
          MyPage()
        ]),
        floatingActionButton: Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Theme.of(context).primaryColor),
                width: 70,
                height: 70,
                child: buildBottomItemView(2, isMiddle: true))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
                height: 68,
                child: Row(children: [
                  buildBottomItemView(0),
                  buildBottomItemView(1),
                  Expanded(child: SizedBox(), flex: 1),
                  buildBottomItemView(3),
                  buildBottomItemView(4)
                ]))));
  }

  Expanded buildBottomItemView(int index, {bool isMiddle: false}) {
    return Expanded(
        child: Center(
            child: RadiusInkWellWidget(
                radius: 30,
                color: Colors.transparent,
                onPressed: () {
                  updateSelectIndex(index);
                },
                child: Container(
                    alignment: Alignment.center,
                    height: isMiddle ? 70 : 60,
                    width: isMiddle ? 70 : 60,
                    child: Column(children: [
                      Icon(Icons.unarchive_sharp,
                          color: isMiddle ? Colors.white : Colors.black),
                      Text(titles[index],
                          style: TextStyle(
                              color: isMiddle ? Colors.white : Colors.black))
                    ], mainAxisSize: MainAxisSize.min)))),
        flex: 1);
  }

  void updateSelectIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
