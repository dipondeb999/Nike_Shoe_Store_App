import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // image
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("assets/images/login.png"),
              ),
              // build text form fields
              _buildTextFormFields(),
              const SizedBox(height: 20),
              // forget password
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // build button
              _buildButton(context),
              const SizedBox(height: 40),
              // build sign up text button
              _buildSignUpTextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormFields() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 55,
          decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            children: [
              const Icon(
                Icons.person,
                color: Color(0xFF475269),
                size: 27,
              ),
              const SizedBox(width: 15),
              Container(
                width: 200,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Username',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 55,
          decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Row(
            children: [
              const Icon(
                Icons.lock,
                color: Color(0xFF475269),
                size: 27,
              ),
              const SizedBox(width: 15),
              Container(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton(context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "HomeScreen");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xFF475269),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have Account? -",
          style: TextStyle(
            color: const Color(0xFF475269).withOpacity(0.8),
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xFF475269),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
