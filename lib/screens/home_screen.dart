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

final logoutButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(20),
  color: Colors.red[400],
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    },
    child: Text(
      "Logout",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);
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
                height: 100,
                child: Image.asset("assets/logos/logo.jpg", fit: BoxFit.contain),
              ),
              SizedBox(height: 60,),
              Text("Welcome Back",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            SizedBox(
              height: 10),
              Text("someuser",
              style: TextStyle(fontSize: 15, color: Colors.black54, fontWeight: FontWeight.w500)
            ),
              Text("someuser@github.dev",
              style: TextStyle(fontSize: 15, color: Colors.black54, fontWeight: FontWeight.w500)
            ),
            SizedBox(height: 15,),
            logoutButton,
            SizedBox(height: 35),
            // ActionChip(label: Text("Logout"), onPressed: () {
            //     Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
            //   },),
              // Login Button
            ],
          ),
        ),
      ),
    );
  }
}