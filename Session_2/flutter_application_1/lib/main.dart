// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Container(
//             child: Column(children: [
//               SizedBox(height: 100),
//               Row(children: [
//                 SizedBox(width: 30),
//                 Container(
//                   height: 110,
//                   width: 110,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                         color: Colors.black), // Border color and width
//                   ),
//                   child: ClipOval(
//                     child: Image.asset(
//                       'assets/images/11.jpg',
//                       fit: BoxFit
//                           .cover, // Ensures the image covers the entire circle without distortion
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 30),
//                 Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Akram Ata',
//                         style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.blue),
//                       ),
//                       Text(
//                         'Egypt',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                       Text(
//                         'Since 2020',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                     ]),
//               ]),
//               SizedBox(height: 30),
//               Row(children: [
//                 SizedBox(width: 40),
//                 Container(
//                     height: 85,
//                     width: 170,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         border: Border.all(color: Colors.black)),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Wallet",
//                             style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             "10,000 EGP ",
//                             style: TextStyle(
//                                 fontSize: 23,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue),
//                           ),
//                         ])),
//                 Container(
//                     height: 85,
//                     width: 170,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         border: Border.all(color: Colors.black)),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Spent",
//                             style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             "1K+ EGP ",
//                             style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue),
//                           ),
//                         ])),
//               ]),
//               SizedBox(height: 20),
//               Container(
//                 height: 70,
                
              
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.favorite,
//                     color: Colors.red,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "My Favorite",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
                  
//                 ]),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 height: 70,
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.payments,
//                     color: Colors.green,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "Payments",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ]),
//               ),
//                SizedBox(height: 10),
//               Container(
//                 height: 70,
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.email,
//                     color: Colors.blue,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "akram@gmail.com",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ]),
//               ),
//                SizedBox(height: 10),
//               Container(
//                 height: 70,
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.phone,
//                     color: Colors.black,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "+02 0123456789",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ]),
//               ),
//                SizedBox(height: 10),
//               Container(
//                 height: 70,
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.settings,
//                     color: Colors.grey,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "Settings",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ]),
//               ),
//                SizedBox(height: 10),
//               Container(
//                 height: 70,
//                 child: Row(children: [
//                   SizedBox(width: 25),
//                   Icon(
//                     Icons.exit_to_app,
//                     color: Colors.blue,
//                     size: 40,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     "Logout",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ]),
//               ),
//             ]),
//           ),
//         ));
//   }
// }



import 'package:flutter/material.dart';
import 'Screens/firstScreen.dart';



void main() {
   runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
