

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassWard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
          Column(

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height:  230 ,
                    width:  double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.storefront,
                            size: 85,color: Colors.white,),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              Text("LOGIN",
                                style: TextStyle(color:  Colors.white,
                                  fontSize: 25,

                                ),
                              ),
                            ],
                          ),

                        ],),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.deepOrange.shade800,
                            Colors.deepOrange.shade500,
                            Colors.orange.shade800,
                            Colors.orange.shade600,

                          ],begin: Alignment.topCenter,
                          end:  Alignment.bottomCenter  ),
                      borderRadius: BorderRadius.only(bottomLeft:
                      Radius.circular(130) ),
                    ) ,

                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:Column(
                      children: [
                        SizedBox(height: 15,),


                        Container(
                          height: 60,
                          child: Form(

                              child: TextFormField(cursorHeight: 30,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Email ',
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabled: true,
                                  prefix:Icon(Icons.email_sharp,color: Colors.green,size: 25,),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,

                                  ),
                                  focusedBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.green,
                                        width: 1),

                                  ),

                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 15,),

                        Container(
                          height: 60,
                          child: Form(

                              child: TextFormField(cursorHeight: 30,
                                obscureText:showPassWard ,
                                keyboardType: TextInputType.visiblePassword ,
                                decoration: InputDecoration(
                                  hintText: 'password ',
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabled: true,

                                  prefix: IconButton(
                                      icon: (showPassWard)?Icon(Icons.visibility,color: Colors.deepOrange,size: 25,):
                                      Icon(Icons.visibility_off,color: Colors.green,size: 25,),
                                      onPressed: (){
                                        setState(() {
                                          showPassWard = !showPassWard;
                                        });

                                      }),
                                  // prefixIcon: Icon(Icons.ac_unit),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,

                                  ),
                                  focusedBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.green,
                                        width: 1),

                                  ),

                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 10,),                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          TextButton(
                              onPressed: (){},
                              child: Text('Forgot Password?'))
                        ],),


                        SizedBox(height: 70,),
                        InkWell(
                          onTap: (){},
                          child:Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.deepOrange.shade800,
                                      Colors.deepOrange.shade500,
                                      Colors.orange.shade800,
                                      Colors.orange.shade600,
                                    ]
                                )
                            ),
                            child:
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('LOGIN',style:TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                              ],
                            ),
                          ) ,
                        ),
                        SizedBox(height: 70,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [//

                            Text('Don\'t have an account?',style:TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),),
                            TextButton(onPressed: (){
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) =>
                                  Home())
                              );
                            },
                              child:
                              Text('Register',style:TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                              )), )
                          ],
                        )
                      ],
                    ),

                  )

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
