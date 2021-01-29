import 'package:flutter/material.dart';
import 'package:flutter_express/icon_font.dart';
import 'package:flutter_express/widgets/radius_inkwell_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckExpressPage extends StatefulWidget {
  CheckExpressPage({Key key}) : super(key: key);

  @override
  createState() => _CheckExpressPageState();
}

class _CheckExpressPageState extends State<CheckExpressPage> {
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
        appBar: AppBar(title: Text("千库快递")),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 73.w),
          child: Column(children: [
            RadiusInkWellWidget(
                radius: 40.h,
                onPressed: () {},
                border: Border.all(color: Color(0xffd5d2d2), width: 1),
                color: Color(0xfff7f7f7),
                child: Container(
                    height: 75.h,
                    width: 285.w,
                    alignment: Alignment.center,
                    child: Row(children: [
                      Icon(IconFont.edit, color: Colors.grey, size: 30.r),
                      SizedBox(width: 10.w),
                      Text('备注（可选）',
                          style: TextStyle(color: Colors.grey, fontSize: 30.sp))
                    ], mainAxisSize: MainAxisSize.min)),
                margin: EdgeInsets.only(bottom: 50.h, top: 115.h)),
            Container(
                height: 90.h,
                width: double.infinity,
                child: Row(children: [
                  Icon(IconFont.code, size: 38.r, color: Colors.grey),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Container(
                        height: 90.h,
                        child: Row(children: [
                          Expanded(child: TextField()),
                          InkWell(
                              child: Icon(IconFont.scan2,
                                  color: Theme.of(context).primaryColor),
                              onTap: () {})
                        ]),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Theme.of(context).dividerColor,
                                    width: 1)))),
                  )
                ])),
            Container(
                height: 100.h,
                padding: EdgeInsets.only(top: 10.h),
                child: RadiusInkWellWidget(
                    onPressed: () {},
                    radius: 0,
                    color: Colors.transparent,
                    child: Container(
                        height: 90.h,
                        width: double.infinity,
                        child: Row(children: [
                          Icon(IconFont.building,
                              size: 38.r, color: Colors.grey),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: Container(
                                height: 90.h,
                                child: Row(children: [
                                  Text('选择快递公司',
                                      style: TextStyle(
                                          fontSize: 32.sp,
                                          color: Color(0xffB6B5B5))),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      color: Theme.of(context).primaryColor)
                                ]),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Theme.of(context).dividerColor,
                                            width: 1)))),
                          )
                        ])))),
            RadiusInkWellWidget(
                child: Container(
                    height: 93.h,
                    width: double.infinity,
                    child: Text('查询',
                        style: TextStyle(color: Colors.white, fontSize: 39.sp)),
                    alignment: Alignment.center),
                onPressed: () {},
                color: Color(0xffFF7F02),
                radius: 5,
                margin: EdgeInsets.only(bottom: 93.h, top: 50.h)),
            Text('订单导入',
                style: TextStyle(color: Color(0xffB6B5B5), fontSize: 32.sp)),
            SizedBox(height: 55.h),
            Row(children: [
              RadiusInkWellWidget(
                  child: Container(
                    height: 90.r,
                    width: 90.r,
                  ),
                  onPressed: () {},
                  radius: 45.r,
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffE3E3E3), width: 1)),
              SizedBox(width: 40.w),
              RadiusInkWellWidget(
                  child: Container(
                    height: 90.r,
                    width: 90.r,
                  ),
                  onPressed: () {},
                  radius: 45.r,
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffE3E3E3), width: 1)),
              SizedBox(width: 40.w),
              RadiusInkWellWidget(
                  child: Container(
                    height: 90.r,
                    width: 90.r,
                  ),
                  onPressed: () {},
                  radius: 45.r,
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffE3E3E3), width: 1)),
              SizedBox(width: 40.w),
              RadiusInkWellWidget(
                  child: Container(
                      height: 90.r,
                      width: 90.r,
                      child: Icon(Icons.more_horiz,
                          size: 80.r, color: Colors.grey[300])),
                  onPressed: () {},
                  radius: 45.r,
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffE3E3E3), width: 1))
            ], mainAxisSize: MainAxisSize.min)
          ]),
        ));
  }
}
