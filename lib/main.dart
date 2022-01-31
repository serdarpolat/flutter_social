import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/core/providers/provider_list.dart';
import 'package:social/views/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...?ApplicationProvider.instance?.dependItems],
      child: MaterialApp(
        title: 'Social',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gilroy",
        ),
        home: Home(),
      ),
    );
  }
}
