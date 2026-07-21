import 'package:e_commerce/app/app_color.dart';
import 'package:e_commerce/features/auth/presentation/providers/otp_timer_provider.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});
  static const String routeName = '/verify-otp';
  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _otpTEController = PinInputController();

  final _formKey = GlobalKey<FormState>();
  final OtpTimerProvider _otpTimerProvider = OtpTimerProvider(60);
  @override
  void initState() {
    super.initState();
    _otpTimerProvider.startTimer(); 
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ChangeNotifierProvider.value(
      value: _otpTimerProvider,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: () {},
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    AppLogo(width: 80),
                    SizedBox(height: 10),
                    Text('Verify your OTP', style: textTheme.titleLarge),
                    Text(
                      'A 4 digit OTP has been sent to your email',
                      style: textTheme.labelLarge,
                    ),
                    SizedBox(height: 16),
                    MaterialPinField(
                      length: 4,
                      pinController: _otpTEController,
                      keyboardType: TextInputType.number,
                      theme: MaterialPinTheme(
                        fillColor: Colors.transparent,
                        focusedFillColor: Colors.transparent,
                        focusedBorderColor: AppColor.themeColor,
                      ),
                      
                    ),
      
                    SizedBox(height: 16),
      
                    FilledButton(
                      onPressed: _onTapVerifyButton,
                      child: Text('Verify'),
                    ),
                    SizedBox(height: 16),
                    Consumer<OtpTimerProvider>(
                      builder: (context, otpTimerProvider, child) {
                        if (otpTimerProvider.secondsLeft == 0) {
                          return TextButton(
                            onPressed: _onTapResendOtp,
                            child: Text("Resend OTP"),
                          );
                        }
                        return RichText(
                          text: TextSpan(
                            text: "Resend OTP in ",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: '${otpTimerProvider.secondsLeft}s',
                                style: textTheme.labelLarge?.copyWith(
                                  color: AppColor.themeColor,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapVerifyButton() {
    if (_formKey.currentState!.validate()) {
      // Perform sign-in logic here
    }
  }

  void _onTapResendOtp() {
    _otpTimerProvider.startTimer();
    
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
