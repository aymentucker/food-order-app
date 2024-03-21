import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelvery/components/my_button.dart';
import 'package:fooddelvery/components/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({super.key, this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            const Icon(
              Icons.lock_open_outlined,
              size: 100,
            ),
            const SizedBox(
              height: 25,
            ),
            // Wellcome
            Text(
              'wellcome Back',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            //Textfield Email
            MyTextfield(
              controller: emailController,
              obscureText: false,
              hint: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            //Textfield Pass
            const SizedBox(
              height: 10,
            ),
            //Textfield Email
            MyTextfield(
              controller: passwordController,
              obscureText: true,
              hint: 'Password',
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            //Login Button
            MyButton(
              text: "Sign In",
              onTap: widget.onTap,
            ),
            const SizedBox(
              height: 8,
            ),
            // dont have account? Register Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have account?'),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                    onTap: widget.onTap, child: const Text('Register Now')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
