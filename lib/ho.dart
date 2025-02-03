import 'package:flutter/material.dart';
import 'package:flutter_application_9/HomeWork.dart';
import 'login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 80, 13),
        appBar: AppBar(
          title:const Text("معتز شمسان ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          backgroundColor: const Color.fromARGB(255, 227, 95, 13),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 197, 79, 10),
          width: MediaQuery.of(context).size.width/2+109,
          child: Container(

            padding:const EdgeInsets.all(15),
            child: ListView( children: [
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("assets/images/2.jpeg", fit: BoxFit.cover,),
                      )
                  ),
                  Expanded(child: ListTile(
                    title:const Text("Moataz_Shamsan "),
                    subtitle:const Text("moataz7sha@gmail.com"),
                  ))
                ],
              ),
              ListTile(
                title:const Text("Home"),
                leading:const Icon(Icons.home),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const home()), (route) => false);

                },
              ),
              ListTile(
                title:const Text("Login"),
                leading:const Icon(Icons.login),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const login(),), (route) => false);

                },
              ),
              ListTile(
                title:const Text("HomeWork"),
                leading:const Icon(Icons.home_work_outlined),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork(),), (route) => false);
                },
              ),
              ListTile(
                title:const Text("Accounts"),
                leading:const Icon(Icons.account_box),
                onTap: () {

                },
              ),
              ListTile(
                title:const Text("Help"),
                leading:const Icon(Icons.help),
                onTap: () {

                },
              ),
              ListTile(
                title:const Text("Settings"),
                leading:const Icon(Icons.settings),
                onTap: () {

                },
              ),
              ListTile(
                title:const Text("Sharing"),
                leading:const Icon(Icons.share),
                onTap: () {

                },
              ),

            ],),
          ),

        ),

         body: SafeArea(

          child: Column(
            //mainAxisSize: MainAxisSize.min,//size
            //verticalDirection:VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 50.0,
               // backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/images/2.jpeg'),
              ),
              const SizedBox (
                height: 10.0,
              ),
              const Text(
                'م:معتز شمسان',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Cairo',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'مهندس : شبكات - مطور ويب - مبرمج تطبيقات موبايل',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children:const [
                    Icon(
                      Icons.phone,
                      size: 30.0,
                      color: Color.fromARGB(255, 215, 236, 56),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      ' +967770053547',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
                margin:const EdgeInsets.all(20.0),
                padding:const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.white,
                margin:const EdgeInsets.all(20.0),
                padding:const EdgeInsets.all(10.0),
                child:const Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'moataz7sha@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
