import 'package:flutter/material.dart';
import 'package:flutter_express/pages/order/item_order.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderListPage extends StatefulWidget {
  final int index;

  OrderListPage({Key key, this.index}) : super(key: key);

  @override
  createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage>
    with AutomaticKeepAliveClientMixin {
  int orderCount;

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      orderCount = 10;
    } else if (widget.index == 1) {
      orderCount = 2;
    } else if (widget.index == 2) {
      orderCount = 1;
    } else if (widget.index == 3) {
      orderCount = 7;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        backgroundColor: Color(0xffEFEFF4),
        body: widget.index == 0
            ? SingleChildScrollView(
                child: Column(children: [
                  ListView.separated(
                      padding: EdgeInsets.only(
                          top: 24.h, left: 30.w, right: 30.w, bottom: 120.h),
                      itemBuilder: (_, index) => ItemOrderView(),
                      separatorBuilder: (_, index) => SizedBox(height: 32.h),
                      itemCount: orderCount,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics()),
                  InkWell(
                      onTap: () {},
                      child: Text('查看30天前的订单',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 22.sp))),
                  SizedBox(height: 30.h),
                  InkWell(
                      onTap: () {},
                      child: Text('查看回收站',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 22.sp))),
                  SizedBox(height: 100.h)
                ]),
              )
            : ListView.separated(
                padding: EdgeInsets.only(
                    top: 24.h, left: 30.w, right: 30.w, bottom: 54.h),
                itemBuilder: (_, index) => ItemOrderView(),
                separatorBuilder: (_, index) => SizedBox(height: 32.h),
                itemCount: orderCount));
  }

  @override
  bool get wantKeepAlive => true;
}
