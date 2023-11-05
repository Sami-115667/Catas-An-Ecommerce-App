import 'package:flutter/material.dart';

void main()  {

  runApp(const LoginPage());
  
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()

    );
  }
}


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

  bool _showProgressBar = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 1.70,
            child: Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(15), // Adjust the padding as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        controller: emailcon,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: passwordcon,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: null,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _showProgressBar = true;
                          });
                          Future.delayed(Duration(seconds: 3), () {
                            setState(() {
                              _showProgressBar = false;
                            });
                          });
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}

