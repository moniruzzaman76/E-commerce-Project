import 'package:e_commerce/ui/widgets/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/bottom_navigation_controller.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Wish List',style: TextStyle(
            color: Colors.black54,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),),
        leading: IconButton(
          onPressed: () {
            controller.changeIndex(0);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black54,),
        ),
      ),
      // body: GridView.builder(
      //     itemCount: 15,
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3,
      //       childAspectRatio: 7/8
      //     ) ,
      //     itemBuilder: (context,index){
      //       return  ProductItemPreviewCard(
      //         productData: ,
      //       );
      //     }
      // ),
    );
  }
}
