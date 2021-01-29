import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendExpressPage extends StatefulWidget {
  SendExpressPage({Key key}) : super(key: key);

  @override
  createState() => _SendExpressPageState();
}

class _SendExpressPageState extends State<SendExpressPage> {
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
        appBar: AppBar(title: Text("寄快递")),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 90.h,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Theme.of(context).dividerColor,
              )
            ],
          ),
        ));
  }
}
