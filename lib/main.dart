import 'package:flutter/material.dart';

void main() {
  runApp(const AmarApp());
}
String btnText1="Tap Button";
Color btnColor1= Colors.green;
bool imgVisibility= false;

class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("AFC KING Restaurant"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: RaisedButton(
                 color: btnColor1,
                   child: Text(btnText1,style:
                   TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 50),),
                   onPressed: (){
                   setState(() {
                     btnText1="Button Pressed";
                     btnColor1=Colors.orange;
                     imgVisibility=true;
                });
               }),
               )
             ,
             Visibility(
               visible: imgVisibility,
                 child:
                 Image.network(
                     "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
             ),
              Container(
                height: 200,
                  width: 250,
                  child: Image.asset("assets/images/image4.jpeg")),
            ],
          ),
        ),
      ),
    );
  }
}

