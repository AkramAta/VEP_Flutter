import 'package:flutter/material.dart';

class BuildListTile  {

  late IconData icon;
  late String text;
  late Color iconColor;
  late Function()? x;
 
  
  BuildListTile({
     this.icon = Icons.favorite,
     this.text = "My Favorites",
     this.iconColor = Colors.purple,
     this.x ,
    
  });
    
}


// Widget buildListTile( icon, String text,Color iconColor, Function() x) {
//     return Container(
//       height: 70,
//       margin: EdgeInsets.symmetric(vertical: 5),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 10,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: MaterialButton(
//         onPressed: x, 
//         child: Row(
//           children: [
//             SizedBox(width: 25),
//             Icon(icon, color: iconColor, size: 40),
//             SizedBox(width: 20),
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
