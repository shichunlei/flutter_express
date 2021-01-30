import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'order_list_page.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);

  @override
  createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("订单"), elevation: 0),
        body: Column(children: [
          Container(
              color: Colors.white,
              height: 94.h,
              child: TabBar(
                  tabs: [
                    Tab(text: "全部"),
                    Tab(text: "取件中"),
                    Tab(text: "待支付"),
                    Tab(text: "已取件")
                  ],
                  controller: tabController,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Color(0xff999999),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(fontSize: 32.sp),
                  unselectedLabelStyle: TextStyle(fontSize: 32.sp),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Theme.of(context).primaryColor)))),
          Expanded(
            child: TabBarView(children: [
              OrderListPage(index: 0),
              OrderListPage(index: 1),
              OrderListPage(index: 2),
              OrderListPage(index: 3)
            ], controller: tabController),
          )
        ]));
  }
}
