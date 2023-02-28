import 'package:e_commerce/ui/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/elevated_button.dart';
import '../widgets/reusable_textField.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({Key? key}) : super(key: key);

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {

  final TextEditingController emailTEController = TextEditingController();

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
               const Text('Welcome Back',style: TextStyle(
                 fontSize:35,
                 fontWeight:FontWeight.w500,
               ),),

               const SizedBox(height: 10,),
               const Text('Plase Enter Your Email Address',style: TextStyle(
                 color: Colors.black54,
                 fontSize: 16,
                 letterSpacing: .5
               ),),

               const SizedBox(height: 20,),
               AppTextFieldWidget(
                 controller: emailTEController,
                 hinText: 'Enter Your Email',
               ),

               const SizedBox(height: 20,),
               AppElevatedButton(onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerifyOtpScreen()));
               },text: 'Next',)
             ],
            ),
          ),
        ),
      ),
    );
  }
}




