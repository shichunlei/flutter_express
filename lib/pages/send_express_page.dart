import 'package:flutter/material.dart';
import 'package:flutter_express/widgets/radius_inkwell_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendExpressPage extends StatefulWidget {
  SendExpressPage({Key key}) : super(key: key);

  @override
  createState() => _SendExpressPageState();
}

class _SendExpressPageState extends State<SendExpressPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("寄快递")),
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(children: [
            RadiusInkWellWidget(
                color: Colors.white,
                onPressed: () {},
                child: Container(
                    height: 90.h,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 38.w),
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text('取件地址：',
                          style: TextStyle(
                              fontSize: 26.sp, color: Color(0xff999999))),
                      Image.asset('assets/images/location.png',
                          height: 30.r, width: 21.r),
                      SizedBox(width: 19.w),
                      Text('新都区辣辣小区',
                          style: TextStyle(
                              fontSize: 30.sp, color: Color(0xff0F0E0E))),
                      SizedBox(width: 19.w),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: Color(0xff999999), size: 35.r)
                    ]))),
            Container(
                height: 1,
                width: double.infinity,
                color: Theme.of(context).dividerColor),
            Container(
                height: 90.h,
                width: double.infinity,
                color: Colors.white,
                child: Stack(children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: TabBar(
                          tabs: [
                            Tab(text: "寄快递"),
                            Tab(text: "寄大件"),
                            Tab(text: "国际件")
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
                  Positioned(
                    left: 417.w,
                    bottom: 51.h,
                    child: Container(
                        width: 67.w,
                        height: 26.h,
                        alignment: Alignment.center,
                        child: Text('30kg+',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.white)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6.r),
                                topRight: Radius.circular(6.r),
                                bottomRight: Radius.circular(6.r)),
                            gradient: LinearGradient(
                              colors: [Color(0xffFD770E), Color(0xffF64F4F)],
                            ))),
                  )
                ]),
                margin: EdgeInsets.only(bottom: 39.h)),
            Container(
                height: 350.h,
                width: double.infinity,
                color: Colors.white,
                child: Row(children: [
                  Container(
                      width: 120.w,
                      child: Column(children: [
                        Image.asset('assets/images/start.png',
                            width: 64.r, height: 64.r),
                        Image.asset('assets/images/line.png',
                            width: 41.r, height: 46.r),
                        Image.asset('assets/images/end.png',
                            width: 64.r, height: 64.r)
                      ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
                  Expanded(
                    child: Column(children: [
                      buildExpanded(context, "出发地", "请输入寄件人信息"),
                      Container(
                          height: 1,
                          width: double.infinity,
                          color: Theme.of(context).dividerColor),
                      buildExpanded(context, "目的地", "请输入收件人信息")
                    ]),
                  )
                ])),
            Container(height: 1, color: Theme.of(context).dividerColor),
            Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(children: [
                  RadiusInkWellWidget(
                      child: Container(
                          height: 79.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 29.w),
                          child: Row(children: [
                            Text('快递选择',
                                style: TextStyle(
                                    fontSize: 30.sp, color: Color(0xff050202))),
                            Spacer(),
                            Text('请选择',
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffAEAEAE))),
                            SizedBox(width: 10.w),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 30.r)
                          ])),
                      onPressed: () {},
                      margin: EdgeInsets.only(top: 13.h)),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 29.w),
                      height: 1,
                      color: Theme.of(context).dividerColor),
                  RadiusInkWellWidget(
                      child: Container(
                          height: 79.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 29.w),
                          child: Row(children: [
                            Text('上门时间',
                                style: TextStyle(
                                    fontSize: 30.sp, color: Color(0xff050202))),
                            Spacer(),
                            Text('获取上门时间中',
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffAEAEAE))),
                            SizedBox(width: 10.w),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 30.r)
                          ])),
                      onPressed: () {}),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 29.w),
                      height: 1,
                      color: Theme.of(context).dividerColor),
                  RadiusInkWellWidget(
                      child: Container(
                          height: 79.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 29.w),
                          child: Row(children: [
                            Text('物品类型',
                                style: TextStyle(
                                    fontSize: 30.sp, color: Color(0xff050202))),
                            Spacer(),
                            Text('日用品',
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffAEAEAE))),
                            SizedBox(width: 10.w),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 30.r)
                          ])),
                      onPressed: () {}),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 29.w),
                      height: 1,
                      color: Theme.of(context).dividerColor),
                  RadiusInkWellWidget(
                      child: Container(
                          height: 79.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 29.w),
                          child: Row(children: [
                            Text('报价',
                                style: TextStyle(
                                    fontSize: 30.sp, color: Color(0xff050202))),
                            Spacer(),
                            Text('未报价（建议报价)',
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffAEAEAE))),
                            SizedBox(width: 10.w),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 30.r)
                          ])),
                      onPressed: () {}),
                  Container(height: 1, color: Theme.of(context).dividerColor)
                ]))
          ]),
        ));
  }

  Widget buildExpanded(BuildContext context, String title, String content) {
    return Expanded(
      child: Row(children: [
        Expanded(
            child: RadiusInkWellWidget(
                onPressed: () {},
                child: Row(children: [
                  Expanded(
                      child: Column(
                          children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 30.sp, color: Colors.black)),
                        Text(content,
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xffcdcdcd)))
                      ],
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start)),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 30.r)
                ]))),
        SizedBox(width: 85.w),
        Container(
            height: 128.h, width: 1, color: Theme.of(context).dividerColor),
        Container(
            width: 160.w,
            child: RadiusInkWellWidget(
                onPressed: () {},
                radius: 50,
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/images/contact.png',
                    width: 45.r, height: 51.r)),
            alignment: Alignment.center)
      ]),
    );
  }
}
