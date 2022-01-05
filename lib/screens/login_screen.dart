import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Form key to help validate user authentication
  final _formKey = GlobalKey<FormState>();

  //Editing Controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      // Styling Email Field
      decoration: InputDecoration(
        // ignore: unnecessary_const
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ));
  
    //Password Field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      // validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,

    // Styling Password Field
      decoration: InputDecoration(
        // ignore: unnecessary_const
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  emailField,
                  passwordField,
                ],
              ),
            ),
          ),
        ), 
      ),
    );
  }
}
