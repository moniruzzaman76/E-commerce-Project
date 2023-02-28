import 'package:e_commerce/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerce/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:.5,
        title: const Text('Categories',style: TextStyle(
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
      body: GridView.builder(
        itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4) ,
          itemBuilder: (context,index){
            return CategoriesItemsWidget(
                categoryItemName: "Electronic",
                icon: Icons.fastfood_sharp,
                onTab: (){}
            );
          }
      ),
    );
  }
}
