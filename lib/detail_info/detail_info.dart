import 'package:flutter/material.dart';
import 'package:flutter_bootcamp3/my_contact_info.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({Key? key, required this.myContactInfo}) : super(key: key);
  final MyContactInfo myContactInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.white,
      body: Center(
        child: Text(
          myContactInfo.aboutInfo
        ),
      ),
    );
  }
}
