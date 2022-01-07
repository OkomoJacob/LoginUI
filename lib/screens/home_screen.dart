import 'package:email_login/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome User"),
        centerTitle: true,
      ),
      body: Center(
        child:Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 180,
                child: Image.asset("assets/logos/logo.jpg", fit: BoxFit.contain),
              ),
              Text("Welcome Back",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            SizedBox(
              height: 20),
              Text("someuser",
              style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500)
            ),
              Text("someuser@github.dev",
              style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500)
            ),
            SizedBox(height: 15,),
            ActionChip(label: Text("Logout"), onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
              },),
            ],
          ),
        ),
      ),
    );
  }
}