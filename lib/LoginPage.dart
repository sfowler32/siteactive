import 'package:flutter/material.dart';
import 'package:siteactive/Components/RoundedButton.dart';
import 'package:siteactive/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textControllerEmail;
  TextEditingController textControllerPassword;
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35),
              Image.asset(
                'Assets/SiteActiveWhiteLogo.png',
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  autofocus: false,
                  controller: textControllerEmail,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  obscureText: passwordVisibility,
                  autofocus: false,
                  controller: textControllerPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                      size: 16,
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.01),
              RoundedButton(
                title: 'Log in',
                color: Colors.lightGreen,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
