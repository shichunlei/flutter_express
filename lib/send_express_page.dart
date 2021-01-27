import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("寄快递"),
      ),
      body: Container(),
    );
  }
}
