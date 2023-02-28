import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    super.key, required this.controller, required this.hinText,  this.maxLine,
  });

  final TextEditingController controller;
  final String hinText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines:maxLine ?? 1,
      controller: controller,
      decoration: InputDecoration(
        hintText:hinText,
        border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor)),
        focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
        enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor)),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}