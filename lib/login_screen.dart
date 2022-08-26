import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: "Email", hintText: "contoh : example@mail.com"),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () async {
                String email = emailController.text.toString();
                String password = passwordController.text.toString();
                print("email => $email");
                print("password => $password");
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, minimumSize: const Size.fromHeight(50)),
              child: const Text("Log in")),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?",
                  style: TextStyle(color: Colors.blue))),
          const SizedBox(height: 20),
          const Text("or", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(59, 89, 152, 100),
                minimumSize: const Size.fromHeight(50)),
            label: const Text("Log in with Facebook"),
            icon: const Icon(Icons.facebook),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
                primary: Colors.white, minimumSize: const Size.fromHeight(50)),
            label: const Text("Log in with Google",
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold)),
            icon: const Icon(Icons.web),
          ),
          const SizedBox(height: 20),
          RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                const TextSpan(text: "Don't have an account?"),
                TextSpan(
                    text: "Sign Up",
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
                      })
              ]))
        ]),
      ),
    );
  }
}
