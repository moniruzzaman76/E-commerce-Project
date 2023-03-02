import 'package:e_commerce/ui/screens/create_review_screen.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Reviews',style: TextStyle(
            color: Colors.black54,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),),
        leading: const BackButton(
          color: Colors.black54,
        ),
      ),


      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return Card(
                    margin: const EdgeInsets.all(12),
                    color: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    shadowColor: Colors.white,
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.grey.withOpacity(.15),
                                  child: const Icon(Icons.person_outline,size: 18,color: Colors.black54,),

                                ),
                                const SizedBox(width: 12,),
                                const Text('Moniruzzaman',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54
                                ),)
                              ],
                            ),
                            const SizedBox(height: 14,),
                            const Expanded(
                              child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black54
                                ),),
                            )
                          ],
                        ),

                      ),
                    ),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: AppColors.primaryColor.withOpacity(.1)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Review (1000)',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .5,
                    color: Colors.black54
                ),),
               FloatingActionButton(
                 mini: true,
                 backgroundColor: AppColors.primaryColor,
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateReviewScreen()));
                   },
                 child: const Icon(Icons.add),
               ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
