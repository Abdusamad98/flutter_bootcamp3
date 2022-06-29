import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyListItem extends StatelessWidget {
  const MyListItem(
      {Key? key,
        required this.iconPath,
        required this.text,
        required this.onTap})
      : super(key: key);

  final String iconPath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: ButtonStyle(
         padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: Row(
                  children: [
                    const Icon(Icons.message,size: 24,),
                    const SizedBox(width: 20),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              // Container(
              //   height: 1,
              //   width: double.infinity,
              //   color: Colors.grey,
              // )
            ],
          ),
        ));
  }
}
