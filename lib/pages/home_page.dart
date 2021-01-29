import 'package:flutter/material.dart';
import 'package:flutter_bubble_widget/flutter_bubble_widget.dart';
import 'package:flutter_express/widgets/arc_clipper.dart';
import 'package:flutter_express/widgets/radius_inkwell_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../icon_font.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        Arc(
            arcType: ArcType.CONVEX,
            edge: Edge.BOTTOM,
            height: 45.h,
            child: Container(
                color: Theme.of(context).primaryColor,
                height: 372.h,
                width: double.infinity,
                child: Column(children: [
                  Container(
                      child: AppBar(
                          title: Text('寄快递，上千峰快递'),
                          centerTitle: false,
                          elevation: 0,
                          backgroundColor: Colors.transparent),
                      height: ScreenUtil().statusBarHeight + kToolbarHeight),
                  Container(
                      height: 372.h -
                          45.h -
                          (ScreenUtil().statusBarHeight + kToolbarHeight),
                      alignment: Alignment.center,
                      child: Row(children: [
                        Expanded(
                          child: Column(children: [
                            Icon(IconFont.shipping,
                                size: 60.r, color: Colors.white),
                            SizedBox(height: 40.h),
                            Text('在线寄件',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28.sp))
                          ], mainAxisSize: MainAxisSize.min),
                        ),
                        Expanded(
                          child: Column(children: [
                            Icon(IconFont.package,
                                size: 60.r, color: Colors.white),
                            SizedBox(height: 40.h),
                            Text('电商包裹',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28.sp))
                          ], mainAxisSize: MainAxisSize.min),
                        ),
                        Expanded(
                          child: Column(children: [
                            Icon(IconFont.scan,
                                size: 60.r, color: Colors.white),
                            SizedBox(height: 40.h),
                            Text('扫一扫',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28.sp))
                          ], mainAxisSize: MainAxisSize.min),
                        ),
                        Expanded(
                          child: Column(children: [
                            Icon(IconFont.time,
                                size: 60.r, color: Colors.white),
                            SizedBox(height: 40.h),
                            Text('时效价格',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28.sp))
                          ], mainAxisSize: MainAxisSize.min),
                        )
                      ]))
                ]))),
        RadiusInkWellWidget(
            onPressed: () {},
            color: Color(0xfff7f7f7),
            radius: 40.h,
            child: Container(
                height: 75.h,
                width: 662.w,
                child: Row(children: [
                  Icon(Icons.search, size: 33.r, color: Color(0xff999999)),
                  Text('查询1000+快递公司物流',
                      style:
                          TextStyle(fontSize: 30.sp, color: Color(0xff999999)))
                ], mainAxisSize: MainAxisSize.min),
                alignment: Alignment.center),
            margin: EdgeInsets.only(bottom: 23.h, top: 42.h)),
        BubbleWidget(
            position: BubbleArrowPosition.top,
            width: 300.w,
            height: 247.h,
            arrowHeight: 20.h,
            arrowWidth: 20.w,
            style: PaintingStyle.stroke,
            color: Color(0xffE3E3E3),
            child: Container()),
        SizedBox(height: 57.h),
        Text('您还可以通过以下方式导入',
            style: TextStyle(fontSize: 30.sp, color: Color(0xff999999))),
        Row(children: [
          RadiusInkWellWidget(
              color: Colors.transparent,
              child: Container(height: 195.h, width: 262.w),
              onPressed: () {},
              radius: 12.r,
              border: Border.all(color: Color(0xffDBDBDB), width: 1),
              margin: EdgeInsets.only(right: 58.w, top: 62.h)),
          RadiusInkWellWidget(
              color: Colors.transparent,
              child: Container(height: 195.h, width: 262.w),
              onPressed: () {},
              radius: 12.r,
              border: Border.all(color: Color(0xffDBDBDB), width: 1),
              margin: EdgeInsets.only(left: 58.w, top: 62.h))
        ], mainAxisSize: MainAxisSize.min)
      ]),
    );
  }
}
