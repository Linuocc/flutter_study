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
  ContentWidget(){
    print("ContentWidget的构造函数被调用");
  }
  @override
  State<StatefulWidget> createState() {
    print("ContentWidget的createState被调用");
    return ContentState();
  }
}

class ContentState extends State<ContentWidget> {
  ContentState(){
    print("ContentState的构造函数被调用");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState被调用");
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("ContentState的didChangeDependencies被调用");
  }
  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("ContentState的didUpdateWidget被调用");
  }
  @override
  Widget build(BuildContext context) {
    print("build被调用");
    return Center(
      child: Text(
        "Hello",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
