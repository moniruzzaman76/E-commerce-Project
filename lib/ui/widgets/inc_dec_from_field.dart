import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class IncDncFormField extends StatefulWidget {
  const IncDncFormField({
    super.key,
  });

  @override
  State<IncDncFormField> createState() => _IncDncFormFieldState();
}

class _IncDncFormFieldState extends State<IncDncFormField> {

  final TextEditingController incrementDecrementFormField = TextEditingController();

  int currentValue = 1;
  @override
  void initState() {
    incrementDecrementFormField.text = currentValue.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            currentValue++;
            incrementDecrementFormField.text = currentValue.toString();
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child:const Icon(Icons.add,size: 18,color: Colors.white,) ,
          ),
        ),
        Expanded(
            child: TextFormField(
              controller: incrementDecrementFormField,
              readOnly: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
              ),
            )
        ),
        GestureDetector(
          onTap: (){
            if(currentValue>1){
              currentValue--;
              incrementDecrementFormField.text = currentValue.toString();
            }
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child:const Icon(Icons.remove,size: 18,color: Colors.white,) ,
          ),
        ),
      ],
    );
  }
}