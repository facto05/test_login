import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "twitter.png",
            height: 70,
            width: 70,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: fullNameController,
            decoration: const InputDecoration(labelText: "Full name"),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: "Email"),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: _isObscure,
            decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                )),
          ),
          const SizedBox(
            height: 36,
          ),
          ElevatedButton(
              onPressed: () async {
                String username = emailController.text.toString();
                String password = passwordController.text.toString();
                print("username => $username");
                print("password => $password");
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, minimumSize: const Size.fromHeight(50)),
              child: const Text("Sign Up")),
          const SizedBox(height: 20),
          const Text("or", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(59, 89, 152, 100),
                minimumSize: const Size.fromHeight(50)),
            label: const Text("Sign Up with Facebook"),
            icon: const Icon(Icons.facebook),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
                primary: Colors.white, minimumSize: const Size.fromHeight(50)),
            label: const Text("Sign Up with Google",
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold)),
            icon: Image.asset(
              "google.png",
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(height: 20),
          RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                TextSpan(text: "By signing up you accept the "),
                TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(color: Colors.blue)),
                TextSpan(text: " and "),
                TextSpan(
                    text: "Privacy Policy.",
                    style: TextStyle(color: Colors.blue)),
              ])),
          const SizedBox(height: 30),
          RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                const TextSpan(text: "Already have an account?"),
                TextSpan(
                    text: "Log in",
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }));
                      })
              ]))
        ]),
      ),
    );
  }
}
