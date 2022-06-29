import 'package:flutter_bootcamp3/my_contact_info.dart';

class FakeData {
  static List<MyContactInfo> getMyContacts() {
    List<MyContactInfo> myContactsInfo = [];
    for(int i = 0; i<100;i++){
      myContactsInfo.add(
        MyContactInfo(
            iconPath: "",
            contactName: "Abdulloh $i",
            contactNumber: "+99 899 1234567"),
      );
    }
    return myContactsInfo;
  }
}
