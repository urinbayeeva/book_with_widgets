import 'package:beginner_widgets/first_page.dart';
import 'package:beginner_widgets/homepage.dart';
import 'package:beginner_widgets/main_book.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route:(context) =>  HomePage(),
        FirstPage.route:(context) =>  const FirstPage(),
        MainBook.route:(context) =>  MainBook(),
      },
    );
  }
}
