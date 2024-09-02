










// import 'package:flutter/material.dart';
// import 'Buttons/buildListTile.dart';

// class Addlisttile extends StatefulWidget {
//    Addlisttile({super.key});

//   @override
//   State<Addlisttile> createState() => _AddlisttileState();
// }

// class _AddlisttileState extends State<Addlisttile> {
//   final TextEditingController iconcontroller = TextEditingController();
//   final TextEditingController iconColorcontroller = TextEditingController();
//   final TextEditingController namecontroller = TextEditingController();

  
//   @override
// void dispose() {
//   iconcontroller.dispose();
//   iconColorcontroller.dispose();
//   namecontroller.dispose();
//   super.dispose();
// }

// List submit() {
//   final icon = iconcontroller.text;
//   final iconColor = iconColorcontroller.text;
//   final name = namecontroller.text;
//   return [icon, iconColor, name];
// }




//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 300,
//               child: TextFormField(
//                 controller: iconcontroller,
//                 decoration: InputDecoration(
//                   labelText: "Enter the Icon Name",
//                   border: OutlineInputBorder(),
                  
                  
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: 300,
//               child: TextFormField(
//                 controller: iconColorcontroller,
//                 decoration: InputDecoration(
//                   labelText: "Enter the Icon Color",
//                   border: OutlineInputBorder(),
                  
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: 300,
//               child: TextFormField(
//                 controller: namecontroller,
//                 decoration: InputDecoration(
//                   labelText: "Enter the Name",
//                   border: OutlineInputBorder(),
                  
//                 ),
//               ),
//             ),
//           ],
//         ),


        
//       )
//       );
//   }
// }
