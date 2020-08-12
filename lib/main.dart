import 'package:flutter/material.dart';

///main函数入口
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset("assets/images/img1.jpg");
  }
}

class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Image.network(
        "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
        repeat: ImageRepeat.repeatY,
//        fit: BoxFit.none,
      ),
    ));
  }
}

class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "我是按钮",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        onPressed: () => {},
        onLongPress: () => print("long"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () => print("RaisedButton Click"),
        ),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () => print("FlatButton Click"),
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () => print("OutlineButton Click"),
        ),
        FloatingActionButton(
          child: Text("FloatingActionButton"),
          onPressed: () => print("FloatingActionButton Click"),
        ),
      ],
    );
  }
}

class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "《定风波》",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        TextSpan(text: "苏轼", style: TextStyle(fontSize: 18, color: Colors.red)),
        TextSpan(
            text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
            style: TextStyle(fontSize: 20, color: Colors.purple))
      ]),
      textAlign: TextAlign.center,
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      style: TextStyle(fontSize: 20, color: Color(0xffff0000)),
      textAlign: TextAlign.center,
//      maxLines: 2,
      overflow: TextOverflow.ellipsis,
//      textScaleFactor: 2,//控制文本缩放
    );
  }
}
