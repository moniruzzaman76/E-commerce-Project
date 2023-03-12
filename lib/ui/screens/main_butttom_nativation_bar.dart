import 'package:e_commerce/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerce/ui/screens/cards_screen.dart';
import 'package:e_commerce/ui/screens/home_screen.dart';
import 'package:e_commerce/ui/screens/wish_list_screen.dart';
import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/category_controller.dart';
import '../getx/home_controller.dart';
import '../getx/product_controller.dart';
import 'categories_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}
class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {

  BottomNavigationController controller = Get.put(BottomNavigationController());
  HomeController homeController = Get.put(HomeController());
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());


  final List<Widget>screens = const [
     HomeScreen(),
     CategoryScreen(),
     CardScreen(),
     WishListScreen(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeController.getProductSliderList();
      categoryController.getCategories();
      productController.getPopularProducts();
      productController.getSpecialProducts();
      productController.getNewProducts();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationController>(
        builder: (_) {
          return screens[controller.selectedIndex];
        }
      ),

      bottomNavigationBar:GetBuilder<BottomNavigationController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index){
              controller.changeIndex(index);
            },
            items:  const [
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 30),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,size: 30),label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,size: 30),label: 'Card',),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard,size: 30),label: 'Wish'),
            ],
          );
        }
      ),
    );
  }
}
