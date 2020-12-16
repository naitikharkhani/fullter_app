import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme:ThemeData(
       // primarySwatch: Colors.blue
      )
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconanimationController;
  Animation<double> _iconanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconanimationController=new CurvedAnimation(
      parent: _iconanimationController,
      curve: Curves.bounceInOut
    ) as AnimationController ;
    _iconanimation.addListener(()=>this.setState(() {}));
    _iconanimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
        body: new  Stack(
          fit: StackFit.expand,
        children: <Widget>[
         new Image(image: new AssetImage("Assets/bg.jpeg"),
          fit: BoxFit.cover,
         color: Colors.black54,
         colorBlendMode:BlendMode.darken,),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: _iconanimation.value*100)
            ],
          )
        ],
      )
    );
  }
}
