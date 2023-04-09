import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:div/static/static_function.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final String title = "Màn hình phép chia 2";
  static const String content = "Đây là màn hình phép chia 2";

  void _onClick() async {
    print(StaticFunction);
    if(StaticFunction.goRoot != null){
      StaticFunction.goRoot!();
    }else{
      Navigator.pop(context);
    }
  }

  Future<bool> _onWillPop() async {
    Navigator.pop(context);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                _onClick();
              },
              child: Text('Về lại trang gốc'),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}