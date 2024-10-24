import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page file
import 'homepage.dart'; // Import the home page file
import 'signup.dart'; // Import the signup page file
import 'adminloginpage.dart';
import 'admindashboard.dart'; // Import the admin login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
