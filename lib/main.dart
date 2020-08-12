import 'package:flutter/material.dart';

///main函数入口
main() => runApp(MyApp());

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

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.orange,
                child: Text("计数-1"),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                }),
            RaisedButton(
                color: Colors.green,
                child: Text("计数+1"),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
          ],
        ),
        Text(
          "当前计数：$counter",
          style: TextStyle(fontSize: 25),
        ),
      ],
    ));
  }
}

//class ContentWidget extends StatelessWidget {
//  int counter = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            RaisedButton(child:Text("计数+1"),onPressed:(){
//              print("按钮点击");
//              counter++;
//            }),
//            Text(
//              "当前计数：$counter",
//              style: TextStyle(fontSize: 25),
//            ),
//          ],
//        ));
//  }
//}
