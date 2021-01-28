import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'icon_font.dart';
import 'pages/check_express_page.dart';
import 'pages/home_page.dart';
import 'pages/my_page.dart';
import 'pages/order_page.dart';
import 'pages/send_express_page.dart';
import 'widgets/radius_inkwell_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<Map> list = [];

  @override
  void initState() {
    super.initState();

    list = [
      {"title": "首页", "icon": IconFont.home},
      {"title": "查快递", "icon": IconFont.express},
      {"title": "寄件", "icon": IconFont.send},
      {"title": "订单", "icon": IconFont.order},
      {"title": "我的", "icon": IconFont.my}
    ];
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
            width: 118.r,
            height: 118.r,
            alignment: Alignment.center,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(54.r),
                    color: Colors.white),
                width: 108.r,
                height: 108.r,
                child: buildBottomItemView(2, isMiddle: true))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
                height: 108.r,
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
                    height: 108.r,
                    width: 108.r,
                    child: Column(children: [
                      Icon(list[index]['icon'],
                          color: isMiddle
                              ? Theme.of(context).primaryColor
                              : index == selectedIndex
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                          size: 48.r),
                      Text(list[index]['title'],
                          style: TextStyle(
                              color: isMiddle
                                  ? Theme.of(context).primaryColor
                                  : index == selectedIndex
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey))
                    ], mainAxisSize: MainAxisSize.min)))),
        flex: 1);
  }

  void updateSelectIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
