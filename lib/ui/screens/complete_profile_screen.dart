import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/elevated_button.dart';
import '../widgets/reusable_textField.dart';
import 'main_butttom_nativation_bar.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  final TextEditingController firstNameTEController = TextEditingController();
  final TextEditingController lastNameTEController = TextEditingController();
  final TextEditingController mobileTEController = TextEditingController();
  final TextEditingController cityTEController = TextEditingController();
  final TextEditingController addressTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                SvgPicture.asset('assets/images/crafty-bay.svg',width: 130,fit: BoxFit.scaleDown,),
                const SizedBox(height: 20,),
                const Text('Complete Profile',style: TextStyle(
                  fontSize:35,
                  fontWeight:FontWeight.w500,
                ),),

                const SizedBox(height: 10,),
                const Text('Get Started with us with your details',style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    letterSpacing: .5
                ),),

                const SizedBox(height: 20,),
                AppTextFieldWidget(
                  controller: firstNameTEController,
                  hinText: 'First Name',
                ),

                const SizedBox(height: 20,),
                AppTextFieldWidget(
                    controller: lastNameTEController,
                    hinText: "Last Name"
                ),

                const SizedBox(height: 20,),
                AppTextFieldWidget(
                    controller: mobileTEController,
                    hinText: "Mobile"
                ),

                const SizedBox(height: 20,),
                AppTextFieldWidget(
                    controller: cityTEController,
                    hinText: "City"
                ),

                const SizedBox(height: 20,),

                AppTextFieldWidget(
                    controller:addressTEController,
                    hinText: "Shipping Address",
                  maxLine: 4,
                ),

                const SizedBox(height: 20,),
                AppElevatedButton(onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainBottomNavigationBar()),
                          (route) => false);
                },text: 'Complete',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
