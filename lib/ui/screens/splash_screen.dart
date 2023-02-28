import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
           SvgPicture.asset('assets/images/crafty-bay.svg',width: 150,fit: BoxFit.scaleDown,),
            const Spacer(),
             CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
            const SizedBox(height: 16,),
            const Text('version 1.0.0',style: TextStyle(
              color:Colors.grey,
              fontWeight: FontWeight.w500,
              letterSpacing: .6
            ),),
            const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}
