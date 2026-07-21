import 'package:e_commerce/app/extentions/localization_extention.dart';
import 'package:e_commerce/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:e_commerce/features/shared/utils/validators.dart';
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
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: () {
                
              },
              child: Column(
                children: [
                  SizedBox(height: 80),
                  AppLogo(width: 80),
                  SizedBox(height: 10),
                  Text('Sign In', style: textTheme.titleLarge),
                  Text(
                    'Sign in with your email and password',
                    style: textTheme.labelLarge,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                   controller: _emailController,
                   validator: (String? value) =>Validators.validateEmail(value),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: context.localization.email,
                      hintText: context.localization.email,
                    ),
                  ),
                   SizedBox(height: 16),
                  
                  TextFormField(
                    controller: _passwordController,
                    validator: (String? value)=>Validators.validatePassword(value), 
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: context.localization.password,
                      hintText: context.localization.password,
                    ),
                    
                        
                  ),
                  SizedBox(height: 16),
                  FilledButton(
                    onPressed: _onTapSingInButton,
                    child: Text('Sign in'),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: _onTapSingUpButton,
                    child: Text("Don't have an account? Sign Up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSingInButton() {
    if(_formKey.currentState!.validate() ){
      // Perform sign-in logic here
    }
  }

  void _onTapSingUpButton() {
    Navigator.pushNamed(context, SignUpScreen.routeName);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
