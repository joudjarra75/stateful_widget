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
  Color _color = Colors.blueGrey;
  Color _appColor = Colors.deepPurple;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget",
          style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
        backgroundColor: _appColor, ),
      body:
      Container(margin:EdgeInsets.all(30) ,
        child: Column(children:[
          Row(children: [ElevatedButton(onPressed:()=>{setState(() {
              _color = Colors.cyanAccent;
              _appColor = Colors.black12;
          })},
          child: Text("Color 1",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black87,)),
          style:ElevatedButton.styleFrom(padding:EdgeInsets.all(20),backgroundColor:Colors.cyanAccent)),
          SizedBox(width: 10,),
            ElevatedButton(onPressed:()=>{
              setState(() {
                _color = Colors.white;
                _appColor = Colors.black;

              })
            }, child: Text("Color 2",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black87,)),
              style: ElevatedButton.styleFrom(padding:EdgeInsets.all(20),backgroundColor:Colors.white,),),
            SizedBox(width: 10,),
            ElevatedButton(onPressed:()=>{
              setState(() {
                _color = Colors.white10;
                _appColor = Colors.indigoAccent;

              })
            }, child: Text("Color 3",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black87,)),
              style:ElevatedButton.styleFrom(padding:EdgeInsets.all(20),backgroundColor:Colors.white10,),),
          SizedBox(width: 10,)],
          mainAxisAlignment:MainAxisAlignment.center,),
        ],
        ),
      ),
      backgroundColor: _color
    );
  }

}