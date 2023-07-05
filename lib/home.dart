import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:olx_clone/customwidget.dart';
import 'package:olx_clone/sellpage.dart';

class hmpage extends StatefulWidget {
  const hmpage({super.key});

  @override
  State<hmpage> createState() => _hmpageState();
}

class _hmpageState extends State<hmpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Your Location',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(1, 2),
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(-1, 0),
                      ),
                    ], color: Colors.white, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black54,
                    size: 15,
                  ),
                  Text(
                    'KOZHIKODE',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(-1, 0),
                        ),
                      ],
                    
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  width: 320,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.black54,),
                        SizedBox(width: 5,),
                        Text('search anything...',style: TextStyle(color: Colors.black54),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(-1, 0),
                        ),
                      ],
              
                      ),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.directions_car),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(-1, 0),
                        ),
                      ],
              
                      ),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.motorcycle_outlined),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(-1, 0),
                        ),
                      ],
              
                      ),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.phone_android_rounded),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(-1, 0),
                        ),
                      ],
              
                      ),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.business_outlined),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Car',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    SizedBox(width: 56,),
                    Text('Bike',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    SizedBox(width: 48,),

                    Text('Mobile',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    SizedBox(width: 32
                    ,),

                    Text('Properties',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              
              
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Fresh Recomendation',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              // Container(
              //   height:404,
              //   child: ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     itemCount: 4,

              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8),
              //         child: custm(),
              //       );

                  
              //   },))
              Expanded(child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('coll').snapshots(),
            
            builder: (context, snapshot) {
              
              if(snapshot.data !=null){

            var data=snapshot.data!.docs;

            return ListView.separated(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: custm(name: data[index]["name"],price: data[index]["price"],place: data[index]["place"],photo: data[index]["ima"]),
              );
            }, separatorBuilder: (context, index) => Divider(), itemCount: data.length);
            }
         else{
          return 
Text(snapshot.error.toString());
         }
         
         
          },))

            ],
          ),
        ),
        floatingActionButton: 
        FloatingActionButton(
          backgroundColor: Colors.white,
          
          

          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => sell(),));
          },
          child: Icon(Icons.add,color: Colors.black,),
          mini: true, 
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(20.0),
          ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          
      ),
    );
  }
}
