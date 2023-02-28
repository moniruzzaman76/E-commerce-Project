import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../widgets/elevated_button.dart';
import 'complete_profile_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  final TextEditingController otpTEController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                SvgPicture.asset('assets/images/crafty-bay.svg',width: 130,fit: BoxFit.scaleDown,),
                const SizedBox(height: 20,),
                const Text('Enter OTP code',style: TextStyle(
                  fontSize:35,
                  fontWeight:FontWeight.w500,
                ),),
                const SizedBox(height: 10,),
                const Text('A 4 digit OTP code has been sent',style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    letterSpacing: .5
                ),),
                const SizedBox(height: 20,),

             PinCodeTextField(
              appContext:context,
              length: 4,
              obscureText: false,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 55,
                fieldWidth: 45,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                selectedColor: AppColors.primaryColor
              ),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              controller: otpTEController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
                setState(() {
                });
              }, beforeTextPaste: (text) {
                 return true;
               },
             ),

                const SizedBox(height: 20,),
                AppElevatedButton(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const CompleteProfileScreen()));
                },text: 'Next',),

                const SizedBox(height: 40,),
                RichText(
                    text: TextSpan(
                  text: 'This code will expire in',style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                    ),
                      children: [
                        TextSpan(
                          text: '120',
                          style: TextStyle(color: AppColors.primaryColor)
                        ),
                      ])),
                
                const SizedBox(height: 10,),
                TextButton(onPressed: (){}, child: const Text('Resend Code',style:TextStyle(color: Colors.grey),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
