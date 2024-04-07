import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/auth_service.dart';
import 'package:food_delivery/widgets/custom_textfield.dart';
import 'package:food_delivery/widgets/primary_button.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void registar() async {
    //get the auth service
    final authService = AuthService();

    //check if passwords match
    if (passwordController.text == confirmPasswordController.text) {
      // try creating user
      try {
        await authService.signUpWithEmailAndPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: PrimaryText(
              text: e.toString(),
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: PrimaryText(
            text: 'Passwords Dont match',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.dinner_dining_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryText(
                text: 'Lets Create Your Account',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryTextField(
                obsecureText: false,
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryTextField(
                obsecureText: true,
                controller: passwordController,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryTextField(
                obsecureText: true,
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(
                onTap: registar,
                child: PrimaryText(
                  text: 'Sign Up',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryText(
                    text: 'Already have an Account?',
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: PrimaryText(
                      text: 'Login Now',
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
