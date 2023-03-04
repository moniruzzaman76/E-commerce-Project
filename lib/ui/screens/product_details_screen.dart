import 'package:e_commerce/ui/screens/review_screen.dart';
import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:e_commerce/ui/widgets/product_images_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/elevated_button.dart';
import '../widgets/inc_dec_from_field.dart';
class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Product Details',style: TextStyle(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  const [
                            Expanded(
                                child: Text(
                              'Happy New year Special Deal 30% Save ', maxLines: 2, style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600

                            ),)),
                            SizedBox(
                              width: 90,
                                child: IncDncFormField()
                            ),
                          ],
                        ),
                        Row(
                          children: [
                             const Icon(Icons.star,color: Colors.amber,),
                            const Text('4.5',style: TextStyle(
                              fontSize: 15,
                                color: Colors.black54
                            ),),
                            const SizedBox(width: 8,),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReviewScreen()));
                            }, child: Text('Reviews',style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primaryColor
                            ),)),
                            const SizedBox(width: 8,),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.primaryColor
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                size: 16,
                                color: Colors.white,
                              ),

                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        const Text('Color',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54
                        ),),
                        const SizedBox(height: 8,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i=0;i<5;i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primaryColor,
                                  radius: 14,
                                  child: const Icon(Icons.check),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16,),
                        const Text('Size',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                        ),),
                        const SizedBox(height: 8,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i=0;i<5;i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black54
                                      ),
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Text('XL',style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16,),
                        const Text('Description',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                        ),),
                        const SizedBox(height: 8,),
                        const Text(''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        ''',style: TextStyle(
                            fontSize: 13,
                            letterSpacing: .2,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: AppColors.primaryColor.withOpacity(.15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Total price',style: TextStyle(
                        fontSize: 10
                    ),),
                    Text('\$1000.00',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .5,
                        color: AppColors.primaryColor
                    ),),
                  ],
                ),
                SizedBox(
                    width: 120,
                    child: AppElevatedButton(onTap: (){},text: 'Add To Card',)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
