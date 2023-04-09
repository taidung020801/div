import 'package:div/Router/router_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String title = "Trang chủ phép chia";

  void onClick ({
    required String pageName
  }) async{
    await Navigator.of(context).pushNamed(pageName);
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
                onClick(pageName: RouterConfig.screen1);
              },
              child: Text('Đi tới trang 1'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                onClick(pageName: RouterConfig.screen2);
              },
              child: Text('Đi tới trang 2'),
            )
          ],
        ),
      )
    );
  }
}