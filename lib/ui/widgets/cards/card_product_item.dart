import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../inc_dec_from_field.dart';

class CardProductitem extends StatelessWidget {
  const CardProductitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
      child: Row(
        children: [
          Image.asset('assets/images/product_shoe.png',height:100,width:90,fit: BoxFit.cover,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Product Name',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: .4
                          ),),
                          Row(
                            children: const [
                              Text('Color: red',style: TextStyle(
                                fontSize: 13,
                              ),),
                              SizedBox(width:6,),
                              Text('Size: x',style: TextStyle(
                                fontSize: 13,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline,color: Colors.red,))
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text('\$100',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppColors.primaryColor
                      )),
                      const Spacer(),
                      const SizedBox(
                        width: 90,
                        height: 30,
                        child: IncDncFormField(),
                      )
                    ],

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}