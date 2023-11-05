import 'package:flutter/material.dart';
void main()  {

  runApp(const ProfilePage());

}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile()

    );
  }
}



class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:  Text( "My Profile"),),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(

                width: double.infinity,
                height: 150,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile.png',  // Replace with your image path
                        width: 100,               // Set the desired width of the image
                        height: 100,              // Set the desired height of the image
                        fit: BoxFit.cover,        // You can use different BoxFit options
                      ),

                    ),


                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: IntrinsicWidth(
                      child: ElevatedButton(

                          onPressed: () {
                            // Add your onPressed functionality here
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/edit.png'
                                ,width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 8,),
                              Text("Edit Profile")

                            ],
                          )

                      ),
                    ),



                  ),
                ),

              ),
              Container(

                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(

                      children: [
                        Image.asset(
                          'assets/name.png'
                          ,width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 8,),


                        Text("Name",style: (
                            TextStyle( fontSize: 12, fontWeight: FontWeight.bold,)

                        ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4, left: 40),
                    child: Text("Md Shamsur Rahman Sami",style: (
                        TextStyle( fontSize: 16, fontWeight: FontWeight.bold,)

                    ),

                    ),
                  ),
                ),
              ),
              Divider(
                height:15, // Adjust the height of the divider
                color: Colors.black, // You can change the color to your preference
              ),

              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(

                      children: [
                        Image.asset(
                          'assets/email.png'
                          ,width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 8,),


                        Text("Email",style: (
                            TextStyle( fontSize: 12, fontWeight: FontWeight.bold,)

                        ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4, left: 40),
                    child: Text("shamsurrahman07052001@gmail.com",style: (
                        TextStyle( fontSize: 16, fontWeight: FontWeight.bold,)

                    ),

                    ),
                  ),
                ),
              ),
              Divider(
                height: 15, // Adjust the height of the divider
                color: Colors.black, // You can change the color to your preference
              ),

              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/phone.png'
                          ,width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 8,),


                        Text("Phone",style: (
                            TextStyle( fontSize: 12, fontWeight: FontWeight.bold,)

                        ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4, left: 40),
                    child: Text("01866362585",style: (
                        TextStyle( fontSize: 16, fontWeight: FontWeight.bold,)

                    ),

                    ),
                  ),
                ),
              ),
              Divider(
                height: 15, // Adjust the height of the divider
                color: Colors.black, // You can change the color to your preference
              ),

            ],
          ),
        ),
      ),

    );
  }
}
