import 'package:flutter/material.dart';

import './pages/dashboard_page.dart';

void main(){
  runApp(RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramUi(),
    );
  }
}