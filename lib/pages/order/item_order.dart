import 'package:flutter/material.dart';
import 'package:flutter_express/icon_font.dart';
import 'package:flutter_express/widgets/radius_inkwell_widget.dart';
import 'package:flutter_express/widgets/round_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOrderView extends StatelessWidget {
  ItemOrderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadiusInkWellWidget(
        color: Colors.white,
        radius: 10.r,
        child: Container(
            width: double.infinity,
            height: 322.r,
            padding: EdgeInsets.only(top: 30.r, left: 30.w, right: 30.w),
            child: Column(children: [
              Row(children: [
                RoundImage(
                    path:
                        'https://img14.360buyimg.com/n0/jfs/t1/136205/10/7310/56308/5f3dee56E034ab78c/ffc11f69acf791e5.jpg',
                    width: 137.r,
                    height: 137.r),
                SizedBox(width: 35.w),
                Expanded(
                  child: Column(children: [
                    SizedBox(height: 5.r),
                    Text(
                        'Redmi 9A 5000mAh大电量 大屏幕大字体大音量 1300万AI相机 八核处理器 人脸解锁 4GB+64GB 晴空蓝 游戏智能手机 小米 红米',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 34.sp, color: Color(0xff333333))),
                    SizedBox(height: 7.r),
                    Text('数量 1',
                        style: TextStyle(
                            fontSize: 26.sp, color: Color(0xff999999))),
                    SizedBox(height: 5.r),
                    Text('价格 599.00',
                        style: TextStyle(
                            fontSize: 26.sp, color: Color(0xff999999))),
                  ], crossAxisAlignment: CrossAxisAlignment.start),
                )
              ]),
              SizedBox(height: 32.r),
              Row(children: [
                RoundImage(
                    path:
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202007%2F01%2F20200701063944_5VaBk.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614561612&t=13e5391487eaf0b9005955148dc735ea',
                    width: 100.r,
                    height: 100.r,
                    radius: 50.r),
                SizedBox(width: 30.w),
                Expanded(
                  child: Column(children: [
                    Text('姓名 小库库',
                        style: TextStyle(
                            fontSize: 30.sp, color: Color(0xff666666))),
                    SizedBox(height: 18.h),
                    Text('手机号 133****9012',
                        style: TextStyle(
                            fontSize: 24.sp, color: Color(0xff999999)))
                  ], crossAxisAlignment: CrossAxisAlignment.start),
                ),
                RadiusInkWellWidget(
                    onPressed: () {},
                    child: Container(
                        height: 68.r,
                        width: 68.r,
                        alignment: Alignment.center,
                        child: Icon(IconFont.phone,
                            color: Theme.of(context).primaryColor, size: 34.r)),
                    radius: 34.r,
                    color: Color(0xffE6EDFC))
              ])
            ])),
        onPressed: () {},
        showShadow: true);
  }
}
