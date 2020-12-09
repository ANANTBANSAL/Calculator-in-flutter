import 'package:flutter/material.dart';
class cal extends StatefulWidget {
  @override
  _calState createState() => _calState();
}

class _calState extends State<cal> {
  _buttonpressed( value)
  {

  }
  TextEditingController _tx=TextEditingController();
  Widget buildButton(String buttonText,double buttonHeight,Color buttonColor)
  {
    return Container(
      height:MediaQuery.of(context).size.height*.1*buttonHeight,
      color:buttonColor,
      child:MaterialButton(
        elevation:100,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(color:Colors.white,
                width: 1,
                style:BorderStyle.solid
            ),
          ),
          padding: EdgeInsets.all(15),
          onPressed:(){},
            child:Text(
               buttonText,
               style:TextStyle(
                               fontSize:30,
                              fontWeight:FontWeight.normal,
                              color:Colors.white ,
                            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Simple Clculator')) ,
      body:Column(
       children:[
         Container(
             alignment:Alignment.centerRight,
             padding:EdgeInsets.fromLTRB(10,20,10,0),
        child:Text('0' ,style:TextStyle(fontSize: 48.0)
         ,)),

         Container(
             alignment:Alignment.centerRight,
             padding:EdgeInsets.fromLTRB(10,20,10,0),
             child:Text('0' ,style:TextStyle(fontSize: 48.0))
         ),
         Expanded(
           child:Divider()
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Container(
               width:MediaQuery.of(context).size.width *.75,
             child:Table(
             children: [
               TableRow(
                 children: [
                   buildButton('C', 1, Colors.redAccent),
                   buildButton('⌫',1,Colors.black26),
                   buildButton('÷',1,Colors.orangeAccent),
                 ]
               ),
               TableRow(
                   children: [
                     buildButton('7', 1, Colors.blue),
                     buildButton('8',1,Colors.blue),
                     buildButton('9',1,Colors.blue),
                   ]
               ),
               TableRow(
                   children: [
                     buildButton('4', 1, Colors.blue),
                     buildButton('5',1,Colors.blue),
                     buildButton('6',1,Colors.blue),
                   ]
               ),
               TableRow(
                   children: [
                     buildButton('1', 1, Colors.blue),
                     buildButton('2',1,Colors.blue),
                     buildButton('3',1,Colors.blue),
                   ]
               ), TableRow(
                   children: [
                     buildButton('.', 1, Colors.blue),
                     buildButton('0',1,Colors.blue),
                     buildButton('00',1,Colors.blue),
                   ]
               )
             ],
            )
             ) ,
             Container(
               width:MediaQuery.of(context).size.width *.25,
                   child: Table(
                     children:[
                       TableRow(
                         children: [
                           buildButton('*',1,Colors.orangeAccent),
                         ]
                       ),TableRow(
                           children: [
                             buildButton('-',1,Colors.orangeAccent),
                           ]
                       ),TableRow(
                           children: [
                             buildButton('+',1,Colors.orangeAccent),
                           ]
                       ),
                       TableRow(
                           children: [
                             buildButton('=',2,Colors.orangeAccent),
                           ]
                       )

                     ]
                   ),
             )
           ],
         )
       ],
      ),
    );
  }
}
