import 'package:flutter/material.dart';
import 'package:flutter_bubble_widget/flutter_bubble_widget.dart';
import '../widgets/arc_clipper.dart';
import '../widgets/radius_inkwell_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                            child: RadiusInkWellWidget(
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                onPressed: () {},
                                child: Column(children: [
                                  Image.asset('assets/images/shipping.png',
                                      height: 50.r, width: 70.r),
                                  SizedBox(height: 35.h),
                                  Text('在线寄件',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28.sp))
                                ], mainAxisSize: MainAxisSize.min))),
                        Expanded(
                            child: RadiusInkWellWidget(
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                onPressed: () {},
                                child: Column(children: [
                                  Image.asset('assets/images/package.png',
                                      height: 51.r, width: 52.r),
                                  SizedBox(height: 35.h),
                                  Text('电商包裹',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28.sp))
                                ], mainAxisSize: MainAxisSize.min))),
                        Expanded(
                            child: RadiusInkWellWidget(
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                onPressed: () {},
                                child: Column(children: [
                                  Image.asset('assets/images/scan2.png',
                                      height: 55.r, width: 55.r),
                                  SizedBox(height: 35.h),
                                  Text('扫一扫',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28.sp))
                                ], mainAxisSize: MainAxisSize.min))),
                        Expanded(
                            child: RadiusInkWellWidget(
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                onPressed: () {},
                                child: Column(children: [
                                  Image.asset('assets/images/time.png',
                                      height: 61.r, width: 62.r),
                                  SizedBox(height: 35.h),
                                  Text('时效价格',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28.sp))
                                ], mainAxisSize: MainAxisSize.min)))
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
            width: 306.r,
            height: 254.r,
            arrowHeight: 20.r,
            arrowWidth: 40.r,
            style: PaintingStyle.stroke,
            color: Color(0xffE3E3E3),
            child: Container(
              child: Column(children: [
                SizedBox(height: 23.r),
                Image.asset('assets/images/order.png',
                    width: 142.r, height: 86.r),
                SizedBox(height: 12.r),
                Text('输入单号\n开启智能查询',
                    style: TextStyle(color: Color(0xff030303), fontSize: 28.sp),
                    textAlign: TextAlign.center)
              ]),
            )),
        SizedBox(height: 57.h),
        Text('您还可以通过以下方式导入',
            style: TextStyle(fontSize: 30.sp, color: Color(0xff999999))),
        Row(children: [
          RadiusInkWellWidget(
              child: Container(
                height: 195.r,
                width: 262.r,
                child: Column(children: [
                  SizedBox(height: 27.r),
                  Image.asset('assets/images/object.png',
                      width: 105.r, height: 89.r),
                  Spacer(),
                  Text('绑定电商平台',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 28.sp),
                      textAlign: TextAlign.center),
                  SizedBox(height: 22.r)
                ]),
              ),
              onPressed: () {},
              radius: 12.r,
              border: Border.all(color: Color(0xffDBDBDB), width: 1),
              margin: EdgeInsets.only(right: 58.w, top: 62.h)),
          RadiusInkWellWidget(
              child: Container(
                height: 195.r,
                width: 262.r,
                child: Column(children: [
                  SizedBox(height: 29.r),
                  Image.asset('assets/images/scan.png',
                      width: 115.r, height: 96.r),
                  Spacer(),
                  Text('扫码条形码',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 28.sp),
                      textAlign: TextAlign.center),
                  SizedBox(height: 22.r)
                ]),
              ),
              onPressed: () {},
              radius: 12.r,
              border: Border.all(color: Color(0xffDBDBDB), width: 1),
              margin: EdgeInsets.only(left: 58.w, top: 62.h))
        ], mainAxisSize: MainAxisSize.min)
      ]),
    );
  }
}
