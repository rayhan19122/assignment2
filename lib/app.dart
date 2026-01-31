import 'package:assignment2_on_flutter/codes.dart';
import 'package:flutter/material.dart';
import 'package:assignment2_on_flutter/widgets/info.dart';
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment-2",
      home: Code(),
    );
  }

}
