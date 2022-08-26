import 'package:flutter/material.dart';
import 'package:test_login/login_screen.dart';
import 'package:test_login/register_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "twitter.png",
            height: 70,
            width: 70,
          ),
          const Text(
            "Twitter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text("Discover upcoming events near you"),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const RegisterScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(50)),
            child: const Text("Sign Up"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const LoginScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 0.5, color: Colors.blue),
                primary: Colors.white,
                minimumSize: const Size.fromHeight(50)),
            child: const Text(
              "Sign In",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(onPressed: (){
            
          },
          child: const Text("Skip for now",style: TextStyle(color: Colors.blue)))
        ]),
      ),
    );
  }
}
