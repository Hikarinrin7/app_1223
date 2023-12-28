import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(//scaffoldは必ずbodyをとる。
          body: Column(//columnが縦並び、rowが横並び
            //children: [container(), container(),・・・]
            children: [
              Container(//containerは必ずchildをとる。ほぼdiv
                child: Text("Hello container"),
                color: Colors.blue,//colorつけるとサイズわかりやすい
                width: 100,
                height: 100,
              ),
              SizedBox(//１箇所だけ隙間開ける
                width: 20.0,
                height: 20.0,
              ),
              Container(//containerは必ずchildをとる。ほぼdiv
                child: Text("Hello container"),
                color: Colors.green,//colorつけるとサイズわかりやすい
                width: 100,
                height: 100,
              ),
              Container(//containerは必ずchildをとる。ほぼdiv
                child: Text("Hello container"),
                color: Colors.red,//colorつけるとサイズわかりやすい
                width: 100,
                height: 100,
                margin: EdgeInsets.all(5.0),//全部に適用されちゃう
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,//DEBUGバナーを消す
    );
  }
}
//この塊を何かでwrapしたい！→選択してopt enterか電球マークか
//widgetで囲んで名前をSafeAreaにすると上下を避けて配置できる

//四角をいっぱい配置したいときも、childを含むcontainerをwrapしてみよう