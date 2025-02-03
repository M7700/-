import 'package:flutter/material.dart';

import 'HomeWork.dart';

class hw_4 extends StatelessWidget {
  const hw_4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
          }, icon:const Icon(Icons.arrow_back_outlined)),
          title:const Text("Moataz_Shamsan"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            // Container
            Container(
              margin: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 235, 72, 17),
              alignment: Alignment.center,
              height: 80,
              child:const Text(
                "I am container",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            // Container   Transform
            Transform.rotate(
              angle: -0.2,
              child: Container(
                margin:const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 243, 103, 10),
                alignment: Alignment.center,
                height: 60,
                child:const Text(
                  "Hai, I am Slanting",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Container
            Transform.rotate(
              angle: 0.2,
              child: Container(
                margin:const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 220, 66, 4),
                alignment: Alignment.center,
                height: 60,
                child:const Text(
                  "I am also Slanting, but see my edges",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //    Stack
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 214, 92, 16),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: const Color.fromARGB(255, 235, 99, 8),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
