import 'package:flutter/material.dart';
import 'package:flutter_bootcamp3/main.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other screen"), leading: IconButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (BuildContext context) {
          return MyHomePage();
        }));
      }, icon: Icon(Icons.arrow_back_ios),),),
    );
  }
}
