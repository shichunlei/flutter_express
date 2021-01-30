import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'icon_font.dart';
import 'pages/check_express_page.dart';
import 'pages/home_page.dart';
import 'pages/my_page.dart';
import 'pages/order/order_page.dart';
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
      {
        "title": "首页",
        "normal": "assets/images/tab_home_normal.png",
        "selected": "assets/images/tab_home_selected.png",
        "height": 46.r,
        "width": 46.r
      },
      {
        "title": "查快递",
        "normal": "assets/images/tab_consult_normal.png",
        "selected": "assets/images/tab_consult_selected.png",
        "height": 46.r,
        "width": 45.r
      },
      {
        "title": "寄件",
        "icon": IconFont.send,
        "normal": "assets/images/tab_send.png",
        "selected": "assets/images/tab_send.png",
        "height": 43.r,
        "width": 43.r
      },
      {
        "title": "订单",
        "normal": "assets/images/tab_order_normal.png",
        "selected": "assets/images/tab_order_selected.png",
        "width": 39.r,
        "height": 47.r
      },
      {
        "title": "我的",
        "normal": "assets/images/tab_my_normal.png",
        "selected": "assets/images/tab_my_selected.png",
        "height": 43.r,
        "width": 39.r
      }
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
            width: 129.r,
            height: 129.r,
            alignment: Alignment.center,
            child: FloatingActionButton(
                onPressed: () => updateSelectIndex(2),
                child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(54.r)),
                    alignment: Alignment.center,
                    height: 119.r,
                    width: 119.r,
                    child: Column(children: [
                      Icon(list[2]['icon'],
                          color: selectedIndex == 2
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                          size: 43.r),
                      Text(list[2]['title'],
                          style: TextStyle(
                              fontSize: 26.sp,
                              color: selectedIndex == 2
                                  ? Colors.white
                                  : Theme.of(context).primaryColor))
                    ], mainAxisSize: MainAxisSize.min)))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
                height: 111.r,
                child: Row(children: [
                  buildBottomItemView(0),
                  buildBottomItemView(1),
                  Expanded(child: SizedBox(), flex: 1),
                  buildBottomItemView(3),
                  buildBottomItemView(4)
                ]))));
  }

  Expanded buildBottomItemView(int index) {
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
                    height: 111.r,
                    width: 111.r,
                    child: Column(children: [
                      Image.asset(
                          list[index][
                              '${index == selectedIndex ? "selected" : "normal"}'],
                          height: list[index]['height'],
                          width: list[index]['width']),
                      SizedBox(height: 10.r),
                      Text(list[index]['title'],
                          style: TextStyle(
                              fontSize: 26.sp,
                              color: index == selectedIndex
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
