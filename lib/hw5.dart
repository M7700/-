import 'package:flutter/material.dart';
import 'package:flutter_application_9/home.dart';

import 'HomeWork.dart';

class hw_5 extends StatelessWidget {
  const hw_5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
          }, icon:const Icon(Icons.arrow_back_outlined)),
        ],
        title:const Text("Moataz_Shamsan"),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    
                  ),
                  SizedBox(height: 10),
                  Text(
                    'moataz7sha@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const home()), (route) => false);
              },
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),
      body:const Center(
        child: Text('Main Content Area'),
      ),
    );
  }
}
