import 'package:flutter/material.dart';
import 'package:flutter_application_9/login.dart';

class tsgil extends StatelessWidget {
  const tsgil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const login()), (route) => false);
          }, icon: const Icon(Icons.arrow_back_outlined)),
          title:const Text("tsgil",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , ),),
          backgroundColor: const Color.fromARGB(255, 218, 103, 4),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("tsgil" , style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      hintText: ("Name"),
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:const InputDecoration(
                        hintText: ("Email Address"),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),)
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:const InputDecoration(
                      hintText: ("Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 231, 65, 10),
                    child: MaterialButton(onPressed: (){

                    },
                      child:const Text("Create Account" ,style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do have an account? "),
                      TextButton(onPressed: ()
                      {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const login(),), (route) => false);
                      },
                          child:const Text("Login Now" ,style: TextStyle(color: Color.fromARGB(255, 226, 109, 7)),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
