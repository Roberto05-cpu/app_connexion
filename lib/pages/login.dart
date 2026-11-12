import 'package:app_connexion/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo et titre
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Icon(Icons.person_outlined, size: 100),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Email'),
                    Text(
                      'Forgot password',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                MyTextField(
                  hintText: 'Enter your email',
                  obscureText: false,
                  icon: Icons.email,
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                Text('Password'),
                MyTextField(hintText: 'Enter your password', obscureText: true, icon: Icons.lock)
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade400
              ),
              onPressed: () {},
              child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Text('or continue with'),
            Row(
              children: [
                Icon(Icons.g_mobiledata),
                Icon(Icons.facebook_rounded)
              ],
            ),
            Row(
              children: [
                Text('Not registered yet?'),
                Text('Sign Up', style: TextStyle(color: Colors.blue))
              ],
            )
          ],
        ),
      ),
    );
  }
}
