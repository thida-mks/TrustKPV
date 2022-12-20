// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class Incomeinputer extends StatefulWidget {
//   const Incomeinputer({Key? key}) : super(key: key);

//   @override
//   State<Incomeinputer> createState() => _IncomeinputerState();
// }

// class _IncomeinputerState extends State<Incomeinputer> {
//   late DateTime _selectedDate;
//   final TextEditingController _textEditingController = TextEditingController();

//   Widget incomeItem() {
//     return Container(
//       height: 80.0,
//       margin: const EdgeInsets.all(20.0),
//       child: const TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             Icons.label_important_rounded,
//             color: Colors.white,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.white,
//               width: 1.0,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.white,
//               width: 3.0,
//             ),
//           ),
//         ),
//       ),
//     );
//     // onPressed: onPressed, child: child
//   }

//   Widget incomeAmount() {
//     return Container(
//       height: 80.0,
//       margin: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: const TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             Icons.money,
//             color: Colors.white,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.white,
//               width: 1.0,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.white,
//               width: 3.0,
//             ),
//           ),
//         ),
//       ),
//     );
//     // onPressed: onPressed, child: child
//   }

//   Widget incomeDate() {
//     return Container(
//       height: 80.0,
//       margin: const EdgeInsets.all(20.0),
//       child: TextField(
//         focusNode: AlwaysDisabledFocusNode(),
//         controller: _textEditingController,
//         onTap: () {
//           _selectDate(context);
//         },
//       )
//     );
//     // onPressed: onPressed, child: child
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Income',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         leading: const Icon(Icons.arrow_back_ios_new_rounded),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/purple_galaxy.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 incomeItem(),
//                 incomeAmount(),
//                 incomeDate(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//  _selectDate(BuildContext context) async {
//     DateTime newSelectedDate = await showDatePicker(
//         context: context,
//         initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
//         firstDate: DateTime(2000),
//         lastDate: DateTime(2040),
//         builder: (BuildContext context, Widget child) {
//           return Theme(
//             data: ThemeData.dark().copyWith(
//               colorScheme: ColorScheme.dark(
//                 primary: Colors.deepPurple,
//                 onPrimary: Colors.white,
//                 surface: Colors.blueGrey,
//                 onSurface: Colors.yellow,
//               ),
//               dialogBackgroundColor: Colors.blue[500],
//             ),
//             child: child,
//           );
//         });

//    if (newSelectedDate != null) {
//       _selectedDate = newSelectedDate;
//       _textEditingController
//         ..text = DateFormat.yMMMd().format(_selectedDate)
//         ..selection = TextSelection.fromPosition(TextPosition(
//             offset: _textEditingController.text.length,
//             affinity: TextAffinity.upstream));
//     }
//   }

// class AlwaysDisabledFocusNode extends FocusNode {
//   @override
//   bool get hasFocus => false;
// }

// return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Table(
//         border: const TableBorder(
//           horizontalInside: BorderSide(
//           width: 1,
//           color: Colors.transparent),
//         ),
//         children: const [
//           TableRow( // Header
//             children: [
//               Text(
//                 "ລາຄາ/Ounces",
//                 textScaleFactor: 1.2, style: TextStyle(color: Colors.black),
//               ),
//               Text("ປ່ຽນແປງ", textScaleFactor: 1.2),
//               Text("ເປີເຊັນ/ວັນ", textScaleFactor: 1.2),
//             ],
//           ),
//           TableRow( //LAK
//             children: [
//               Text("price1", textScaleFactor: 1.2),
//               Text("Change1", textScaleFactor: 1.2),
//               Text("persent1", textScaleFactor: 1.2),
//             ],
//           ),
//           TableRow( //USD
//             children: [
//               Text("price2", textScaleFactor: 1.2),
//               Text("Change2", textScaleFactor: 1.2),
//               Text("persent2", textScaleFactor: 1.2),
//             ],
//           ),
//           TableRow( //THB
//             children: [
//               Text("price3", textScaleFactor: 1.2),
//               Text("Change3", textScaleFactor: 1.2),
//               Text("persent3", textScaleFactor: 1.2),
//             ],
//           ),
//           TableRow( //CNY
//             children: [
//               Text("price4", textScaleFactor: 1.2),
//               Text("Change4", textScaleFactor: 1.2),
//               Text("persent4", textScaleFactor: 1.2),
//             ],
//           ),
//         ],
//       ),
//     );

// Expanded(
//               flex: 2,
//               child: Image.asset(
//                 'assets/logos/kpv_logo.png',
//                 width: 100.0,
//                 height: 100.0,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 padding: const EdgeInsets.all(10.0),
//                 child: const Text(
//                   'ລາຄາຄຳປະຈຳວັນ',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 padding: const EdgeInsets.all(12.0),
//                 decoration: const BoxDecoration(
//                   color: Color.fromARGB(255, 12, 80, 136),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(5.0),
//                   ),
//                 ),
//                 child: const Text(
//                   '08/11/2022',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.all(3.0),
//                 child: const Text(
//                   '10:00',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Image.asset('assets/logos/kpv_gold.png'),