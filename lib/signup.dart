import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:olx_clone/home.dart';
import 'package:olx_clone/loginpg.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var emilctr=TextEditingController();
  var passctr=TextEditingController();
   aut({required  emil,required  pass}){
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: emil, password: pass).then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => hmpage(),)));
    }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                    padding: const EdgeInsets.only(right: 15,top: 60),
                    child: Container(
                      // color: Colors.amber,
                      width: 250,
                      height: 200,
                      child: Center(child: Image.asset('asset/OLX.png')),
                    ),
                  ),
                  SizedBox(height: 200,),
                  Padding(
                    padding: const EdgeInsets.only(right: 140,bottom: 10),
                    child: Text('Create Account',style: TextStyle(color: Colors.grey),),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [                 BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(1, 5), 
                  ),
                         BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(-1, 0), 
                  ),],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    width: 300,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        
                        decoration: InputDecoration(
                          hintText: 'Email',hintStyle: TextStyle(color: Colors.grey),
            
                          border: InputBorder.none),
                        controller: emilctr,
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                   Container(
                    decoration: BoxDecoration(
                        boxShadow: [                         BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(1, 5), 
                  ),
                         BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(-1, 0), 
                  ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    width: 300,
                    height: 48,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                        
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'password',
                          border: InputBorder.none
                        ),
                        controller: passctr,
                               ),
                     ),
                   ),
                   SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: InkWell(
                  onTap: () => aut(emil: emilctr.text, pass: passctr.text),
                  child: Container(
                        decoration: BoxDecoration(
                                   boxShadow: [                         BoxShadow(
                               color: Colors.grey.withOpacity(0.5),
                               spreadRadius: 0,
                               blurRadius: 2,
                               offset: Offset(1, 5), 
                                   ),
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.5),
                               spreadRadius: 0,
                               blurRadius: 2,
                               offset: Offset(-1, 0), 
                                   ),
                          ],
                          
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        width: 100,
                        height: 30,
                        child: Center(child: Text('SIGN UP',style: TextStyle(color: Colors.grey),)),
                       ),
                ),
              ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(16),
                     child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginpage(),));
                     }, child: Text('Already have account?LOG IN',style: TextStyle(color: Colors.grey),)),
                   )
            ],
          ),
        ),
      ),
    );
  }
}