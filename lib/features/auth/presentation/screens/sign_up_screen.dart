import 'package:e_commerce/app/extentions/localization_extention.dart';
import 'package:e_commerce/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:e_commerce/features/shared/utils/validators.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = '/sign_up';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _cityController = TextEditingController();
  final _phoneController = TextEditingController();
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
                  SizedBox(height: 16),
                  AppLogo(width: 100),
                  SizedBox(height: 10),
                  Text('Create an Account', style: textTheme.titleLarge),
                  Text(
                    'Sign up with your email and password',
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
                  SizedBox(height: 8),
                  TextFormField(
                   controller: _firstNameController,
                   validator: (String? value) =>Validators.validateInput(value, " Please enter your first name"),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: context.localization.firstName,
                      hintText: context.localization.firstName,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                   controller: _lastNameController,
                   validator: (String? value) =>Validators.validateInput(value, " Please enter your last name"),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: context.localization.lastName,
                      hintText: context.localization.lastName,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                   controller: _cityController,
                   validator: (String? value) =>Validators.validateInput(value, " Please enter your city"),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: context.localization.city,
                      hintText: context.localization.city,
                    ),
                  ),
                   SizedBox(height: 8),
                  TextFormField(
                   controller: _phoneController,
                   validator: (String? value) =>Validators.validateInput(value, " Please enter your phone number"),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: context.localization.phone,
                      hintText: context.localization.phone,
                    ),
                  ),
                  SizedBox(height: 8),
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
                    onPressed: _onTapSingUpButton,
                    child: Text('Sign Up'),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: _onTapSingInButton,
                    child: Text("Already have an account? Sign In"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSingUpButton() {
    // if(_formKey.currentState!.validate() ){
    //   // Perform sign-up logic here
    // }
    Navigator.pushNamed(context, VerifyOtpScreen.routeName);
  }

  void _onTapSingInButton() {
    Navigator.pop(context);
    
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _cityController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
