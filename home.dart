import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sabak_5_login/secondPage.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String ? number;
  String ? email ;
  void ishtoo(){
    if (number != null  && email != null){
      if(number!.isEmpty || email!.isEmpty){
        isActive = false;
      }
      else {
        isActive = true;
      }
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text("Тапшырма 4",
        style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Bermet Kubandykova", 
            style: TextStyle( color: Color(0xffF7F9F9),
              fontSize: 48,fontFamily: "Pacifico"),
            ),
            const Text("Flutter developer", style: TextStyle(
              color: Color(0xffF7F9F9),
              fontSize: 28),),
              const Divider(
                height: 0,
                thickness: 2,
                indent: 120,
                endIndent: 120,
                color: Colors.white, ),
                const SizedBox(height: 23.5,),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20, 
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600, ),
                  onChanged: (String? value) {
                    ishtoo();
                    number = value;
                    print("PhoneText : $value");
                  },
                  decoration: const InputDecoration(
                    hintText: "phone number",
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal:40),
                      child: Icon(Icons.phone, color: Color(0xff056c5c)),
                    ),
            
                  ),
                  )
             ),
             const SizedBox(height: 53,),
              Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20, 
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600, ),
                  onChanged: ( String? value) {
                    ishtoo();
                    email = value;
                    print("mailText: $value");
                  },
                   decoration: const InputDecoration(
                    hintText: "email addres",
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal:40 ),
                      child: Icon(Icons.mail, color: Color(0xff056c5c)),
                    ),

                  ),
                  )
             ),
             const SizedBox(height: 30),
             ElevatedButton(style: ElevatedButton.styleFrom(side:BorderSide(width: 2,color: Colors.white),
             elevation: 10,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
             ),
             padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
             ),
              onPressed: isActive? (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Secondpage() ));
              }: null, 
             child: const Text("Start", style: TextStyle(color: Colors.white),))
          ],),
        )
    );
  }
}