import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:e_commerce/ui/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/bottom_navigation_controller.dart';
import '../widgets/cards/card_product_item.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {

  BottomNavigationController controller = Get.put(BottomNavigationController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Cards',style: TextStyle(
            color: Colors.black54,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),),
        leading: IconButton(
          onPressed: () {
            controller.changeIndex(0);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
                  return  const CardProductitem();
                }
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
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
                  height: 50,
                  width: 130,
                  child: AppElevatedButton(onTap: (){},text: 'Check Out',)
                )
              ],
            ),
          )
        ],
      )
    );
  }
}



