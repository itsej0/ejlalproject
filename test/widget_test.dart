import 'package:flutter/material.dart';

void main() => runApp(Ejlal());

class Ejlal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'اسم المستخدم'),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'كلمة المرور'),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  String enteredUsername = usernameController.text;
                  String enteredPassword = passwordController.text;

                  if (enteredUsername == 'ejlal' && enteredPassword == '123') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreen(username: enteredUsername),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('اسم المستخدم أو كلمة المرور غير صحيحة!')),
                    );
                  }
                },
                child: Text('تسجيل دخول'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  final String username;

  WelcomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مرحبًا $username')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('مرحبًا $username!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('العودة'),
            ),
          ],
        ),
      ),
    );
  }
}