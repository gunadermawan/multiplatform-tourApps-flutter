import 'package:flutter/material.dart';
import 'package:tour/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isError = false;
  bool _isEmailEmpty = false;
  bool _isPasswordEmpty = false;

  void _performLogin() {
    setState(() {
      _isEmailEmpty = _emailController.text.trim().isEmpty;
      _isPasswordEmpty = _passwordController.text.trim().isEmpty;
      if (_isEmailEmpty || _isPasswordEmpty) {
        _isError = true;
      } else {
        // Perform simple authentication here
        final email = _emailController.text.trim();
        final password = _passwordController.text.trim();
        if (email == 'user@example.com' && password == 'password') {
          _isError = false;
          // Navigate to the next screen on successful login
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const MainScreen();
          }));
        } else {
          _isError = true;
          // Clear the password field on failed login
          _passwordController.clear();
          _emailController.clear();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 48.0),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  errorText: _isEmailEmpty ? 'Email cannot be empty' : null,
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  errorText:
                      _isPasswordEmpty ? 'Password cannot be empty' : null,
                ),
              ),
              if (_isError)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Invalid email or password',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _performLogin,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
