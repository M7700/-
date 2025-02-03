import 'package:flutter/material.dart';

import 'HomeWork.dart';

class hw_3 extends StatelessWidget {
  const hw_3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
            }, icon:const Icon(Icons.arrow_back_outlined)),
            title:const Text("Sample title" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),

            actions: [
              IconButton(onPressed: () {}, icon:const Icon(Icons.directions_bike_rounded , color: Colors.white,) ,),
              IconButton(onPressed: () {}, icon:const Icon(Icons.directions_bus, color: Colors.white,), ),
              IconButton(onPressed: () {}, icon:const Icon(Icons.search, color: Colors.white,))
            ],
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
            color: Colors.brown,
            child: Text("Hello",style: TextStyle( color: Colors.white , fontSize: 25)),
            alignment: Alignment.center,
          ),

        )


    );
  }
}
