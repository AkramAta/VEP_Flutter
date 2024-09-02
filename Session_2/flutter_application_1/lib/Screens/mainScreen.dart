import 'package:flutter/material.dart';


import 'myFavorScreen.dart';
import 'paymentScreen.dart';
import 'settingsScreen.dart';
import '../Buttons/buildListTile.dart';
import '../Buttons/StatContainer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<BuildListTile> buildList = [];

  @override
  void initState() {
    super.initState();
    buildList = [
      BuildListTile(
        icon: Icons.favorite,
        text: "My Favorites",
        iconColor: Colors.red,
        x: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FavorScreen()),
          );
        },
      ),
      BuildListTile(
        icon: Icons.payments,
        text: "Payments",
        iconColor: Colors.green,
        x: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaymentScreen()),
          );
        },
      ),
       BuildListTile(
        icon: Icons.email,
        text: "akram@gmail.com",
        iconColor: Colors.blue,
        x: () {
        
        },
      ),
       BuildListTile(
        icon: Icons.phone,
        text: "+02 0123456789",
        iconColor: Colors.black,
        x: () {
          
        },
      ),
       BuildListTile(
        icon: Icons.settings,
        text: "Settings",
        iconColor: Colors.grey,
        x: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Settingsscreen()),
          );
        },
      ),
       BuildListTile(
        icon: Icons.exit_to_app,
        text: "Logout",
        iconColor: Colors.blue,
        x: () {
          Navigator.pop( context);
        },
      ),
    ];
  }

  // void addTile() {
  //   setState(() {
  //     buildList.add(
  //       BuildListTile(
  //         icon: Icons.star,
  //         text: "New Favorite",
  //         iconColor: Colors.purple,
  //         x: () {
           
  //         },
  //       ),
  //     );
  //   });
  // }

   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Addlisttile()));
              setState(() {
                buildList.add(
                  BuildListTile(),
                );
              });
              },
            )
          ],
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.lightBlueAccent.shade100],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 30),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/11.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Akram Ata',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        'Egypt',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'Since 2020',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatContainer("Wallet", "10,000 EGP"),
                  buildStatContainer("Spent", "1K+ EGP"),
                ],
              ),
              SizedBox(height: 30),
    Expanded(

      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for(int i = 0; i < buildList.length; i++)
          Container(
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
    
      child: MaterialButton(
        onPressed: buildList[i].x,
        
        child: Row(
          children: [
            SizedBox(width: 25),
            Icon(buildList[i].icon, color: buildList[i].iconColor, size: 40),
            SizedBox(width: 20),
            Text(
              buildList[i].text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    ),
          // buildListTile(Icons.favorite, "My Favorite",  Colors.red,(){
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => FavorScreen()));
          // } ),
          //     buildListTile(Icons.payments, "Payments", Colors.green, (){}),
          //     buildListTile(Icons.email, "akram@gmail.com", Colors.blue,() {}),
          //     buildListTile(Icons.phone, "+02 0123456789", Colors.black, (){}),
          //     buildListTile(Icons.settings, "Settings", Colors.grey,() {}),
          //     buildListTile(Icons.exit_to_app, "Logout", Colors.blue,() {}),
          //     buildListTile(Icons.whatshot, "Fire", Colors.orange, (){}), 

        ],
      ),
    )
            ],
          ),
        ),
      ),
    );
  }
}