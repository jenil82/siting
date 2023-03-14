import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siting/provider/providre.dart';
import 'package:siting/view/home.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    ),
  );
}