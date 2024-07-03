import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Тапшырма 4",
        style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Bermet Kubandykova", 
            style: TextStyle(fontSize: 48),
            ),
            Text("Flutter developer", style: TextStyle(fontSize: 28),),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20, 
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600, ),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Icon(Icons.phone, color: Color(0xff056c5c)),

                  ),
                  )
             ),
             SizedBox(height: 53,),
              Container(
              color: Colors.white,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20, 
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600, ),
                  onChanged: (value) {},
                   decoration: InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Icon(Icons.mail, color: Color(0xff056c5c)),

                  ),
                  )
             ),
          ],),
        )
    );
  }
}