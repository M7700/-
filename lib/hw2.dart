import 'package:flutter/material.dart';

import 'HomeWork.dart';

class hw_2 extends StatelessWidget {
  const hw_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
            }, icon:const Icon(Icons.arrow_back_outlined)),
            backgroundColor: const Color.fromARGB(255, 229, 55, 2) ,
            title: const Text("Moataz_Shamsan"),
            actions: [IconButton(onPressed: () {

            }, icon:const Icon(Icons.info_outline)) ,
              const Icon(Icons.home)],
            titleTextStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          body:Column(
            children: [
              Container(
                child: Text("Moataz_Shamsan", style: TextStyle(fontSize: 30.5),),
                margin:const EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding:const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 233, 98, 8),
                alignment: Alignment.topLeft,
              ),
              Container(
                child: Text("A conveniece widget that wraps a number of widgets that are commonly required for applcations implementing Material Desing.",
                  style:const TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                margin:const EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding:const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 221, 28, 11),
                alignment: Alignment.center,
                height: 650,
              ),
            ],
          ),
        )
    );
  }
}
