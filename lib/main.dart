import 'package:flutter/material.dart';
import 'package:flutter_bootcamp3/contact_item.dart';
import 'package:flutter_bootcamp3/fake_data.dart';
import 'package:flutter_bootcamp3/my_list_item.dart';
import 'package:flutter_bootcamp3/other_screen.dart';
import 'package:flutter_bootcamp3/utility_functions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_contact_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(370, 812),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyContactInfo> list = FakeData.getMyContacts();
  String contactName = "";
  String contactNumber = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  int activeIndex = -1;

  // bool selected1 = false;
  // bool selected2 = false;
  // bool selected3 = false;
  // bool selected4 = false;
  @override
  void initState() {
    phoneController.text = "A";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Task 15 min"),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_sharp),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return OtherScreen();
              }));
            },
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  myCustomDialogAdd();
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            ...List.generate(
              list.length,
              (index) => ContactItem(
                updateClicked: () {
                  myCustomDialogUpdate(
                      myContactInfo: list[index], updateIndex: index);
                },
                deleteClicked: () {
                  setState(() {
                    UtilityFunctions.getMyToast(
                      message: "Contact ${list[index].contactName} deleted.",
                    );
                    if (activeIndex == index) activeIndex = -1;
                    list.removeAt(index);
                  });
                },
                iconPath: "",
                contactName: list[index].contactName,
                number: list[index].contactNumber,
                whenClicked: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                isSelected: activeIndex == index,
              ),
            ),
          ],
        ));
  }

  void myCustomDialogAdd() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Enter contact info",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  TextField(
                    controller: nameController,
                    // onChanged: (value) {
                    //   contactName = value;
                    // },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: 'Enter name'),
                  ),
                  TextField(
                    controller: phoneController,
                    // onChanged: (value) {
                    //   print(value);
                    //   contactNumber = value;
                    // },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter number',
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          contactName = nameController.text;
                          contactNumber = phoneController.text;

                          if (contactNumber.isNotEmpty &&
                              contactName.isNotEmpty) {
                            list.add(
                              MyContactInfo(
                                iconPath: "",
                                contactName: contactName,
                                contactNumber: contactNumber,
                              ),
                            );
                            UtilityFunctions.getMyToast(
                                message: "Added $contactName");
                            // contactNumber = '';
                            // contactName = '';
                            nameController.text = "";
                            phoneController.text = "";
                            // Navigator.pop(context);

                          } else {
                            UtilityFunctions.getMyToast(
                                message: "Enter inputs");
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Text(
                        "Save contact",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          );
        });
  }

  void myCustomDialogUpdate(
      {required MyContactInfo myContactInfo, required int updateIndex}) {
    phoneController.text = myContactInfo.contactNumber;
    nameController.text = myContactInfo.contactName;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Enter contact info",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  TextField(
                    controller: nameController,
                    // onChanged: (value) {
                    //   contactName = value;
                    // },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: 'Enter name'),
                  ),
                  TextField(
                    controller: phoneController,
                    // onChanged: (value) {
                    //   print(value);
                    //   contactNumber = value;
                    // },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter number',
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          contactName = nameController.text;
                          contactNumber = phoneController.text;

                          if (contactNumber.isNotEmpty &&
                              contactName.isNotEmpty) {
                            list[updateIndex] = MyContactInfo(
                              iconPath: "",
                              contactName: contactName,
                              contactNumber: contactNumber,
                            );
                            UtilityFunctions.getMyToast(
                                message: "Updated $contactName");
                            // contactNumber = '';
                            // contactName = '';
                            nameController.text = "";
                            phoneController.text = "";
                            Navigator.pop(context);
                          } else {
                            UtilityFunctions.getMyToast(
                                message: "Enter inputs");
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Text(
                        "Save contact",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          );
        });
  }

  AlertDialog getMyAlert() => AlertDialog(
        title: Text(
          "Warning!",
        ),
        content: Text("Internet error ocurred"),
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  list.clear();
                });
              },
              child: Text("Delete All")),
          IconButton(
              onPressed: () {
                setState(() {
                  list.add(
                    MyContactInfo(
                      iconPath: "",
                      contactName: "contactName",
                      contactNumber: "contactNumber",
                    ),
                  );
                  UtilityFunctions.getMyToast(
                    message: "Contact  added.",
                  );
                });
              },
              icon: Text("Add"))
        ],
      );

  @override
  void dispose() {
    print("Dispose ishladi");
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
