// import 'package:flutter/material.dart';
// import 'package:flutter_bootcamp3/contact_item.dart';
// import 'package:flutter_bootcamp3/fake_data.dart';
// import 'package:flutter_bootcamp3/my_list_item.dart';
// import 'package:flutter_bootcamp3/utility_functions.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'my_contact_info.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(370, 812),
//         builder: (BuildContext context, Widget? child) {
//           return MaterialApp(
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: MyHomePage(),
//           );
//         });
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<MyContactInfo> list = FakeData.getMyContacts();
//
//   int activeIndex = -1;
//
//   // bool selected1 = false;
//   // bool selected2 = false;
//   // bool selected3 = false;
//   // bool selected4 = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Task 15 min"),
//           leading: Icon(Icons.arrow_back_sharp),
//           centerTitle: true,
//           actions: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 16,
//               ),
//               child: IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {
//                   showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text(
//                             "Warning!",
//                           ),
//                           content: Text("Internet error ocurred"),
//                           actions: [
//                             TextButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     list.clear();
//                                   });
//                                 },
//                                 child: Text("Delete All")),
//                             IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     list.add(
//                                       MyContactInfo(
//                                         iconPath: "",
//                                         contactName: "contactName",
//                                         contactNumber: "contactNumber",
//                                       ),
//                                     );
//                                     UtilityFunctions.getMyToast(
//                                       message: "Contact  added.",
//                                     );
//                                   });
//                                 },
//                                 icon: Text("Add"))
//                           ],
//                         );
//                       });
//                 },
//               ),
//             )
//           ],
//         ),
//         body: ListView(
//           children: [
//             ...List.generate(
//               list.length,
//                   (index) => ContactItem(
//                 deleteClicked: () {
//                   setState(() {
//                     UtilityFunctions.getMyToast(
//                       message: "Contact ${list[index].contactName} deleted.",
//                     );
//                     if (activeIndex == index) activeIndex = -1;
//                     list.removeAt(index);
//                   });
//                 },
//                 iconPath: "",
//                 contactName: list[index].contactName,
//                 number: list[index].contactNumber,
//                 whenClicked: () {
//                   setState(() {
//                     activeIndex = index;
//                   });
//                 },
//                 isSelected: activeIndex == index,
//               ),
//             ),
//           ],
//         ));
//   }
// }
