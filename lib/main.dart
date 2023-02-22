import 'package:flutter/material.dart';
import 'package:task_login_screen/login.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          errorColor: Colors.red,
          backgroundColor: Colors.purple,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
