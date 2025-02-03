import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'HomeWork.dart';

class hw_8 extends StatefulWidget {
  const hw_8({super.key});

  @override
  State<hw_8> createState() => _hw_8State();
}

class _hw_8State extends State<hw_8> {
  File? file1;


  getImage()async{
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// Capture a photo.//  final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    file1=File(image!.path);
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
            }, icon:const Icon(Icons.arrow_back_outlined)),
          ],
          title:const Text("Moataz_Shamsan",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
          centerTitle:true,

          backgroundColor: const Color.fromARGB(255, 222, 96, 13),
        ),
        body: Padding(
          padding:const EdgeInsets.all(2),
          child: Center(

            child: Container(
              color: const Color.fromARGB(255, 234, 104, 5),
              width: 500,
              alignment: Alignment.center,
              padding:const EdgeInsets.all(20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  if(file1 !=null)
                    Container(
                      width: 250,
                      height: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(250),
                          child:Image.file(file1!,fit: BoxFit.cover,alignment: Alignment.center,
                          )
                      ),
                    ),
                  MaterialButton(onPressed: () async {
                    await getImage();
                  },
                    child:const Icon(Icons.add_a_photo),),
          

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
