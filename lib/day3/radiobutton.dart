// import 'package:flutter/material.dart';
// class Radioeg extends StatefulWidget {
//   const Radioeg({Key? key}) : super(key: key);
//
//   @override
//   State<Radioeg> createState() => _RadioegState();
// }
// enum Gender{
//   male,female,other
// }
// class _RadioegState extends State<Radioeg> {
//   var  groupvalue=Gender.male;
//    var ch1=true;
//   var ch2=false;
//   var ch3=false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//     title: Text("radio button")
// ,
//     ),
// body: Column(
//
//   children: [
//     Row(
//       children: [
//         Radio(value:Gender.male, groupValue: groupvalue, onChanged: (value) {
// setState(() {
//   groupvalue=value!;
//
//   });
//         },
//         ),
//       Text("male"),
//         Radio(value: Gender.female, groupValue:groupvalue, onChanged:(value) {
//           setState(() {
//             groupvalue=value!;
//
//           });
//         },),
//         Text("female"),
//         Radio(value: Gender.other, groupValue: groupvalue, onChanged: (value){
//           setState(() {
//             groupvalue=value!;
//           });
//         },),
//         Text('others"'),
//
//
//       ],
//     ),
//     Row(
//       children: [
//         Checkbox(value:ch1, onChanged:(value) {
//         setState(() {
//           ch1=value!;
//         });
//       },),
//         Text("dart"),
//         Checkbox(value: ch2, onChanged:(value) {
//           setState(() {
//             ch2=value!;
//           });
//         },),Text("c")
//         ,Checkbox(value: ch3, onChanged:(value) {
//           setState(() {
//             ch3.=value!;
//           });
//         },),
//         Text("Java"),
//
//     ],)
//   ],
// )
//
//
//     );
//   }
// }
