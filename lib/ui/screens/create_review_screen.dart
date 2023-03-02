import 'package:e_commerce/ui/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import '../widgets/reusable_textField.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key}) : super(key: key);

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {

  final TextEditingController firstNameTEController = TextEditingController();
  final TextEditingController lastNameTEController = TextEditingController();
  final TextEditingController writeReviewTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Create Reviews',style: TextStyle(
            color: Colors.black54,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),),
        leading: const BackButton(
          color: Colors.black54,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
           AppTextFieldWidget(
               controller: firstNameTEController,
               hinText: 'First Name'
           ),
            const SizedBox(height: 20,),
            AppTextFieldWidget(
                controller: lastNameTEController,
                hinText: 'Last Name'
            ),
            const SizedBox(height: 20,),
            AppTextFieldWidget(
              maxLine: 10,
                controller: writeReviewTEController,
                hinText: 'Write Review'
            ),
            const SizedBox(height: 20,),
            AppElevatedButton(
                onTap: (){},
              text: 'Submit',
            )
          ],
        ),
      ),
    );
  }
}
