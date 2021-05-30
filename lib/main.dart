import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Login Page')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.security),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 15,
                ),
                SizedBox(height: 20,),
                ElevatedButton(child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.blue),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
