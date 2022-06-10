import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => {context.goNamed('register')},
                child: Text('Register')),
            ElevatedButton(
                onPressed: () => {context.goNamed('login')},
                child: Text('Log In')),
            ElevatedButton(
                onPressed: () => {context.goNamed('home')},
                child: Text('Clear Auth')),
          ],
        ),
      ),
    );
  }
}
