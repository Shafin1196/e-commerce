import 'package:e_commerce/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, SignInScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Spacer(),
              AppLogo(),
              Spacer(),
              CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                strokeWidth: 8,
                
              ),
              SizedBox(height: 20),
              Text(
                '${AppLocalizations.of(context)!.version} 1.0.0',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

