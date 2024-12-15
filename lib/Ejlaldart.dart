import 'package:flutter/material.dart';

class ejlal extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? validateEmail(String? value) {
    if (value == null || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null; // Return null for valid email
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white), // White button color
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: Colors.grey[300],
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              labelText: 'ejl_Username',
                              labelStyle: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold), // Purple text color
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            style: TextStyle(color: Colors.grey[800]), // Gray color text
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold), // Purple text color
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            validator: validateEmail,
                            style: TextStyle(color: Colors.grey[800]), // Gray color text
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'ejl_Password',
                              labelStyle: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold), // Purple text color
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            style: TextStyle(color: Colors.grey[800]), // Gray color text
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            String username = usernameController.text;
                            String email = emailController.text;
                            String password = passwordController.text;

                            if (username == 'ejlal' && email == 'ejlal@example.com' && password == '123') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WelcomeScreen()),
                              );
                            }
                          },
                          child: Text('Login'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Open Login Dialog'),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text('Hello, ejlal!'),
      ),
    );
  }
}