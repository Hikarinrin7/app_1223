import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //コンストラクター
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("1st app bar"),
          backgroundColor: Colors.orange,
        ),
        body: Image.network("https://www.waseda.jp/top/assets/themes/waseda-template-engine-main/img/logo-header-sm.png")//画像のアドレスをコピー
      ),
    );
  }
}
