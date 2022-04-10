import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tudo_task/providers/buttomnavbarprovider.dart';
import 'package:tudo_task/providers/charprovider.dart';
import 'package:tudo_task/views/buttomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => CharProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
          ),
          home: BottomNavBar()),
    );
  }
}
