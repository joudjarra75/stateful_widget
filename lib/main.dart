import 'package:flutter/material.dart';

main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: ChangeColor(),
    );
  }
}

class ChangeColor extends StatefulWidget{
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget",
          style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
        backgroundColor: Colors.deepPurple, ),
    );
  }

}