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
    return LoginWidget();
  }
}

//表单widget
class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  String username;
  String password;

  GlobalKey<FormState> formGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formGlobalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autovalidate: true,
                decoration:
                    InputDecoration(icon: Icon(Icons.people), labelText: "用户名"),
                onSaved: (value){
                  this.username = value;
                },
                validator: (value){
                  if(value==null||value.length==0){
                    return "用户名不能为空";
                  }
                  return null;
                },
              ),
              TextFormField(
                autovalidate: true,
                obscureText: true,
                decoration:
                    InputDecoration(icon: Icon(Icons.lock), labelText: "密码"),
                onSaved: (value){
                  this.password = value;
                },
                validator: (value){
                  if(value==null||value.length==0){
                    return "密码不能为空";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12,),
              Container(
                width: double.infinity,
                height: 44,
                child: RaisedButton(
                  color: Colors.blue,
                    child: Text(
                      "登录",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    onPressed: () {
                      formGlobalKey.currentState.save();
                      print("用户名:$username 密码:$password");
                    }),
              )
            ],
      )),
    );
  }
}

//输入框widget的使用
class RegisterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<RegisterWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = "我是默认值";
    textEditingController.addListener(() {
      print("监听到值的改变 ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "username",
              hintText: "请输入用户名",
              border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
              filled: true,
//                fillColor: Colors.purple
            ),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
            controller: textEditingController,
          )
        ],
      ),
    );
  }
}

//圆角图片widget
class RadiusImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

//圆形头像图片widget
class CircleImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
        width: 150,
        height: 150,
      ),
    );
  }
}

//本地图片widget
class AssetsImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/img1.jpg");
  }
}

//网络图片widget
class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

//自定义按钮widget
class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

//按钮widget
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

//文本widget
class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

//文本widget
class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
