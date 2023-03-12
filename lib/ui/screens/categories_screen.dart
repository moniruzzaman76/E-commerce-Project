import 'package:e_commerce/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerce/ui/getx/category_controller.dart';
import 'package:e_commerce/ui/screens/product_list_screen.dart';
import 'package:e_commerce/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        elevation: .5,
        title: const Text(
          'Categories',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: .5),
        ),
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
      body: GetBuilder<CategoryController>(builder: (controller) {
        if (controller.getCategoryInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            controller.getCategories();
          },
          child: GridView.builder(
              itemCount: controller.categoryModel.data?.length ?? 0,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) {
                return CategoriesItemsWidget(
                    categoryItemName:
                        controller.categoryModel.data![index].categoryName ?? "",
                    image:
                        controller.categoryModel.data![index].categoryImg ?? "",
                    onTab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductListScreen(
                              categoryId: '${controller.categoryModel.data![index].id ?? 1}',
                            categoryName: controller.categoryModel.data![index].categoryName??"",
                          ),
                        ),
                      );
                    });
              }),
        );
      }),
    );
  }
}
