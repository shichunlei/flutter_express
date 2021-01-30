import 'package:flutter/material.dart';
import 'package:flutter_express/icon_font.dart';
import 'package:flutter_express/widgets/radius_inkwell_widget.dart';
import 'package:flutter_express/widgets/round_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Map> list = [];

  @override
  void initState() {
    super.initState();

    list = [
      {"title": "订单导入", "icon": IconFont.import},
      {"title": "快递评价", "icon": IconFont.comment},
      {"title": "我的地址", "icon": IconFont.address},
      {"title": "我的退款", "icon": IconFont.refund},
      {"title": "在线客服", "icon": IconFont.service},
      {"title": "我的消息", "icon": IconFont.message},
      {"title": "常见问题", "icon": IconFont.faq},
      {"title": "邮寄历史", "icon": IconFont.history}
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFF4),
        body: Column(children: [
          /// 头部
          Container(
              height: 265.h,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.only(top: 109.h, left: 41.w, bottom: 36.h),
              child: Row(children: [
                /// 头像
                RoundImage(
                    width: 120.r,
                    height: 120.r,
                    path:
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.08087.cc%2Fuploads%2F20190415%2F18%2F1555325643-zhFdcDVQCS.jpg&refer=http%3A%2F%2Fimg.08087.cc&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614391160&t=9a35269025efa31a3a231d03763e71a9',
                    radius: 60.r,
                    border: Border.all(color: Color(0xff3172fe), width: 5.r)),
                SizedBox(width: 27.w),
                Column(children: [
                  SizedBox(height: 15.h),
                  Row(children: [
                    /// 姓名
                    Text('ZHANGSAN',
                        style: TextStyle(color: Colors.white, fontSize: 36.sp)),
                    Container(
                        margin: EdgeInsets.only(left: 32.w),
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(20.h)),
                        height: 40.h,
                        width: 135.w,
                        child: Row(children: [
                          Image.asset('assets/images/authentication.png',
                              height: 24.r, width: 26.r),
                          SizedBox(width: 5.w),
                          Text('未实名',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.sp))
                        ], mainAxisAlignment: MainAxisAlignment.center))
                  ]),
                  Spacer(),

                  /// 电话号码
                  Text('137****0002',
                      style: TextStyle(color: Colors.white, fontSize: 26.sp)),
                  SizedBox(height: 15.h)
                ], crossAxisAlignment: CrossAxisAlignment.start)
              ])),
          Container(
              height: 225.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(children: [
                /// 我的账号
                RadiusInkWellWidget(
                    child: Container(
                        padding: EdgeInsets.only(left: 30.w, right: 20.w),
                        height: 90.h,
                        width: double.infinity,
                        child: Row(children: [
                          Text('我的账号',
                              style: TextStyle(
                                  fontSize: 32.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                        ])),
                    onPressed: () {},
                    radius: 0,
                    color: Colors.transparent),
                Row(children: [
                  Expanded(
                      child: RadiusInkWellWidget(
                          child: Container(
                              child: Column(children: [
                                Image.asset('assets/images/balance.png',
                                    height: 37.r, width: 39.r),
                                SizedBox(height: 26.h),
                                Text('账户余额',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        color: Color(0xff333333)))
                              ], mainAxisSize: MainAxisSize.min),
                              height: 135.h,
                              alignment: Alignment.center),
                          onPressed: () {})),
                  Container(
                      height: 70.h,
                      width: 1,
                      color: Theme.of(context).dividerColor),
                  Expanded(
                      child: RadiusInkWellWidget(
                          child: Container(
                              child: Column(children: [
                                Image.asset('assets/images/coupon.png',
                                    height: 34.r, width: 35.r),
                                SizedBox(height: 25.h),
                                Text('卡券包',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        color: Color(0xff333333)))
                              ], mainAxisSize: MainAxisSize.min),
                              height: 135.h,
                              alignment: Alignment.center),
                          onPressed: () {})),
                  Container(
                      height: 70.h,
                      width: 1,
                      color: Theme.of(context).dividerColor),
                  Expanded(
                      child: RadiusInkWellWidget(
                          child: Container(
                              child: Column(children: [
                                Image.asset('assets/images/bank_card.png',
                                    height: 28.r, width: 36.r),
                                SizedBox(height: 26.h),
                                Text('银行卡',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        color: Color(0xff333333)))
                              ], mainAxisSize: MainAxisSize.min),
                              height: 135.h,
                              alignment: Alignment.center),
                          onPressed: () {}))
                ])
              ])),
          Container(
              margin: EdgeInsets.only(top: 25.h),
              child: Wrap(
                  children: List.generate(
                      8,
                      (index) => RadiusInkWellWidget(
                            onPressed: () {},
                            color: Colors.white,
                            child: Container(
                                width: 186.r,
                                height: 186.r,
                                child: Column(children: [
                                  Icon(list[index]['icon'], size: 45.r),
                                  SizedBox(height: 25.h),
                                  Text(list[index]['title'],
                                      style: TextStyle(
                                          fontSize: 24.sp,
                                          color: Color(0xff333333)))
                                ], mainAxisSize: MainAxisSize.min),
                                alignment: Alignment.center),
                          )),
                  spacing: 1.r,
                  runSpacing: 1.r))
        ]));
  }
}
