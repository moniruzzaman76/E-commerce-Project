import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    super.key, required this.productData,
  });

  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen()));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.network(
              productData.image ?? "",
              height: 90,
              width: 160,
              fit:BoxFit.cover,
            ),
            const SizedBox(height: 6,),
             Text(
             productData.title ?? '',
              maxLines: 2,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),),
            const SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 6,),
                Text('\$${productData.price??""}',style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),),
                const SizedBox(width: 8,),
                const Icon(Icons.star,size: 16,color: Colors.amberAccent,),
                 Text(
                 " ${productData.star ?? 0.0}",style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(3)
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 15,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(width: 10,),
              ],
            ),
             const SizedBox(height: 6,)
          ],
        ),
      ),
    );
  }
}