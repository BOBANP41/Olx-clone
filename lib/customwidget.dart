// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class custm extends StatelessWidget {
   custm({super.key,required this.name,required this.price,required this.place,required this.photo});
  String name;
  String place;
  String price;
var photo;


  
  

  @override
  Widget build(BuildContext context) {
    print(name);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
      height: 130,
      child: Row(
        children: [
          Container(
            height: 130,
            width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10) ,topLeft: Radius.circular(10)),
          child: Image(image: NetworkImage('$photo',),fit: BoxFit.fill,)),

          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("product:   ${name}"),
                SizedBox(height: 15,),
                Text("price:   ${price}"),
                SizedBox(height: 50,),

                Text("place:   ${place}",style: TextStyle(fontSize: 10,color: Colors.grey),),

              ],
            ),
          )
        ],
      )
    );
  }
}