import 'package:flutter/material.dart';
import 'package:rando_user/Provider/user_provider.dart';
import 'package:rando_user/Screens/user_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     

      home: ChangeNotifierProvider(create: (context)=> Userprovider(),
      child: const Users(),
      ),
    );
  }
}

