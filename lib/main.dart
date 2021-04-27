import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'package:provider/provider.dart';
import 'models/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Authentication(),
        )
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lets talk',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: LoginScreen(),
        routes:{
          '/1':(context) => HomeScreen(),
          '/2':(context) => SignupScreen(),
        },
      ),
    );
  }
}
