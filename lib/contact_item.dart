import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({Key? key, required this.iconPath, required this.contactName, required this.number, required this.whenClicked, required this.isSelected, required this.deleteClicked}) : super(key: key);

  final String iconPath;
  final String contactName;
  final String number;
  final VoidCallback whenClicked;
  final VoidCallback deleteClicked;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenClicked,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            color: isSelected?Colors.green:Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 6,
                  offset: Offset(0, 3),
                  color: Colors.grey.shade300)
            ]),
        child: Row(
          children: [
            Icon(
              Icons.perm_identity_rounded,
              size: 60,
               color: isSelected?Colors.white:Colors.black
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactName,
                  style: TextStyle(
                    fontSize: 20,
                      color: isSelected?Colors.white:Colors.black
                  ),
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 16,
                      color: isSelected?Colors.red:Colors.black
                  ),
                ),
              ],
            )),
            TextButton(onPressed: deleteClicked, child: Icon(Icons.delete,color: Colors.red,size: 24,),)
          ],
        ),
      ),
    );
  }
}
