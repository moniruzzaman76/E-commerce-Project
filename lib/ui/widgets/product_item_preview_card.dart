import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/product_shoe.png',
            height: 120,
            width: 142,
            fit:BoxFit.cover,
          ),
          const SizedBox(height: 6,),
          const Text('Product Name',
            maxLines: 2,
            style: TextStyle(
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
              Text('\$100',style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 12,
              ),),
              const SizedBox(width: 8,),
              const Icon(Icons.star,size: 16,color: Colors.amberAccent,),
              const Text('4.5',style: TextStyle(
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
          const SizedBox(height: 7,)
        ],
      ),
    );
  }
}