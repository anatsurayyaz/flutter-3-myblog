import 'package:flutter/material.dart';
import 'package:flutter_user_list_cubit/user_list/user_list.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feed App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.pink,
        ),
      ),
      home: const UserListPage(),
    );
  }

}