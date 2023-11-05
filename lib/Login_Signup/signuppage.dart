import 'package:flutter/material.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Signup()

    );
  }
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();
  TextEditingController phonecon = TextEditingController();
  TextEditingController namecon = TextEditingController();
  bool _showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              //overflow:overflow.visible;

              children: [
                if (_showProgressBar)
                  LinearProgressIndicator(
                    color: Colors.blue, // Customize the color if needed
                    minHeight: 4.0, // Adjust the height of the progress bar
                  ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    elevation: 8,
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: namecon,
                                  decoration: InputDecoration(
                                    labelText: "Full Name",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  controller: emailcon,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  controller: phonecon,
                                  decoration: InputDecoration(
                                    labelText: "Phone Number",
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                                SizedBox(height: 20), // Add some spacing
                                TextField(
                                  controller: passwordcon,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true, // If it's a password field
                                ),
                                SizedBox(height: 20), // Add some spacing
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Re-enter password",
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true, // If it's a password field
                                ),

                                ElevatedButton(
                                    onPressed: () {

                                      setState(() {
                                        _showProgressBar = true;
                                      });
                                      Future.delayed(Duration(seconds: 3),
                                              () {
                                            // Hide the progress bar
                                            setState(() {
                                              _showProgressBar = false;
                                            });
                                          });
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(fontSize: 18),
                                    )),
                                Align(
                                  alignment: Alignment
                                      .center, // Align the TextButton to the right
                                  child: Container(
                                    width:
                                    null, // Let the Container take minimum required width
                                    child: TextButton(
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "Already have an account!",
                                        style: TextStyle(color: Colors.blue),
                                        textAlign: TextAlign
                                            .center, // Add your text style
                                      ),
                                    ),
                                  ),
                                ),

                                //SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
