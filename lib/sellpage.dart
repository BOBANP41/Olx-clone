import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/home.dart';

class sell extends StatefulWidget {
  const sell({super.key});

  @override
  State<sell> createState() => _sellState();
}

class _sellState extends State<sell> {
  File? image;
  ImagePicker img=ImagePicker();
  var productctr=TextEditingController();
  var pricectr=TextEditingController();
  var placectr=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: const Offset(1, 2),
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: const Offset(-1, 0),
                      ),
                    ],
                  ),
                  width: 320,
                  height: 650,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: const Offset(1, 2),
                            ),
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: const Offset(-1, 0),
                            ),
                          ],
                          border: Border.all(width: 5, color: Colors.white),
                        ),
                        width: 250,
                        height: 200,
                        child: image==null?Text('no image'):Image.file(image!,fit: BoxFit.fill,),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('CHOOSE ONE'),
                                actions: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () async{
                                            XFile? file=await img.pickImage(source: ImageSource.gallery);
                                          },
                                          child: const Text('gallery')),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      ElevatedButton(
                                          onPressed: () async{
                                            XFile? file1=await img.pickImage(source: ImageSource.camera);
                                            Navigator.pop(context);
                                            setState(() {
                                              if(file1!=null){
                                                image=File(file1.path);

                                              }
                                            });
                                          }, child: const Text('camera'))
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(1, 2),
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(-1, 0),
                              ),
                            ],
                          ),
                          height: 40,
                          width: 100,
                          child: const Center(child: Text('image')),
                        ),
                      ),
                      const SizedBox(height: 80,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextField(
                                         decoration: const InputDecoration(
                                           labelText: 'PRODUCT NAME',
                                         ),
                                         controller: productctr,
                                       ),
                       ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     decoration: const InputDecoration(
                                           labelText: 'PRICE',
                                         ),
                    controller: pricectr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     decoration: const InputDecoration(
                                           labelText: 'PLACE',
                                         ),
                    controller: placectr,
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                       InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const hmpage(),)),
                         child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 2,
                                        offset: const Offset(1, 2),
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 2,
                                        offset: const Offset(-1, 0),
                                      ),
                                    ],
                                  ),
                                  height: 40,
                                  width: 60,
                                  child: const Center(child: Icon(Icons.home),),
                                ),
                       ),
                              const Spacer(),
                      InkWell(
                        onTap: () async{
                          
                          var imagestore=FirebaseStorage.instance.ref().child("ima $placectr.text");
                          await imagestore.putFile(image!);
                          String imageurl=await imagestore.getDownloadURL();


                          FirebaseFirestore.instance.collection('coll').add({
                            'name': productctr.text,
                            'price': pricectr.text,
                            'place': placectr.text,
                            'ima':imageurl
                            

                          });
                          setState(() {
                            productctr.text = '';
                            pricectr.text = '';
                            placectr.text = '';
                          });
                          // Navigator.pop(context);
                        },
                        child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 2,
                                        offset: const Offset(1, 2),
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 2,
                                        offset: const Offset(-1, 0),
                                      ),
                                    ],
                                  ),
                                  height: 40,
                                  width: 60,
                                  child: const Center(child: Text('SELL')),
                                ),
                      ),
                    ],
                  ),
                ),
                    ],
                  ),
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
