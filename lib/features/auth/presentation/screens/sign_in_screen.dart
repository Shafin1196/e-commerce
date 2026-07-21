import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String routeName = '/sign_in';
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              AppLogo(width: 100),
              SizedBox(height: 20),
              Text('Welcome Back', style: textTheme.titleLarge),
              Text(
                'Sign in with your email and password',
                style: textTheme.labelLarge,
              ),
              SizedBox(height: 16),
              TextFormField(
               controller: _emailController,
                
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                

              ),
            ],
          ),
        ),
      ),
    );
  }
}
