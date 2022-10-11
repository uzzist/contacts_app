import 'package:contacts_app/screens/contacts_page.dart';
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
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
          scaffoldBackgroundColor: Colors.green,
          drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white
        ),
      ),
      home: const ContactsPage(),
    );
  }
}