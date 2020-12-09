import 'package:flutter/material.dart';
import 'package:calculator/screen/frontpage.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      title:'Calculator',
      theme: ThemeData(primarySwatch:Colors.blue ),
      home:cal(),
  )
  );
}

