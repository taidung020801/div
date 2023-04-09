import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:div/static/static_function.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final String title = "Màn hình phép chia 1";
  static const String content = "Đây là màn hình phép chia 1";

  void onClick() async {
    print(StaticFunction);
    if(StaticFunction.goRoot != null){
      StaticFunction.goRoot!();
    }else{
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onClick();
              },
              child: Text('Về lại trang gốc'),
            ),
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}