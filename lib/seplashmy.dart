import 'package:flutter/material.dart';

import 'home.dart';




class MySeplash extends StatefulWidget {


  @override
  State<MySeplash> createState() => _MySeplashState();
}

class _MySeplashState extends State<MySeplash> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 6,),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Home(),)
        ,);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("images/see.jpg",),fit: BoxFit.cover
            ),
        ),
        child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/mylogo.png",height: 200,width: 200,),
                  CircularProgressIndicator(backgroundColor: Colors.green,)



                     ],
        ),
      ),
      ),
    );
  }
}
