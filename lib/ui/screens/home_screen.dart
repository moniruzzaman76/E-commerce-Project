import 'package:e_commerce/ui/getx/bottom_navigation_controller.dart';
import 'package:e_commerce/ui/getx/home_controller.dart';
import 'package:e_commerce/ui/getx/product_controller.dart';
import 'package:e_commerce/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../getx/category_controller.dart';
import '../widgets/category_item_widget.dart';
import '../widgets/home/home_barner_slider.dart';
import '../widgets/home/section_slider.dart';
import '../widgets/product_item_preview_card.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: SvgPicture.asset('assets/images/logo_nav.svg'),
          actions: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey.shade200,
              child: Icon(
                Icons.person,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey.shade200,
              child: Icon(
                Icons.call,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey.shade200,
              child: Icon(
                Icons.notifications_active_outlined,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 10),
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.grey),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),

                GetBuilder<HomeController>(builder: (homeController) {
                  if (homeController.getProductSliderInProgress) {
                    return const CircularProgressIndicator();
                  } else {
                    return HomeBannerSlider(
                      productSliderModel: homeController.productSliderModel,
                    );
                  }
                }),

                const SizedBox(
                  height: 16,
                ),
                SectionHeader(
                  headerName: ' Categories',
                  onTabSeeAll: () {
                    bottomNavigationController.changeIndex(1);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),

                GetBuilder<CategoryController>(builder: (controller) {
                  if (controller.getCategoryInProgress) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return SizedBox(
                      height: 110,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.categoryModel.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            return CategoriesItemsWidget(
                              onTab: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductListScreen(
                                      categoryName: controller.categoryModel.data![index].categoryName ?? "",
                                        categoryId: '${controller.categoryModel.data![index].id ?? 1}'),
                                  ),
                                );
                              },
                              image: controller.categoryModel.data![index].categoryImg ?? "",
                              categoryItemName: controller.categoryModel.data![index].categoryName ?? "",
                            );
                          }),
                    );
                  }
                }),

                const SizedBox(
                  height: 16,
                ),
                SectionHeader(headerName: "Popular", onTabSeeAll: () {}),

                const SizedBox(
                  height: 16,
                ),
                GetBuilder<ProductController>(builder: (productController) {
                  if (productController.popularInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController
                                .popularProductModel.data?.length ??
                            0,
                        itemBuilder: (context, index) {
                          return ProductItemPreviewCard(
                            productData: productController
                                .popularProductModel.data![index],
                          );
                        }),
                  );
                }),

                const SizedBox(
                  height: 16,
                ),
                SectionHeader(headerName: "Special", onTabSeeAll: () {}),
                const SizedBox(
                  height: 16,
                ),
                GetBuilder<ProductController>(builder: (productController) {
                  if (productController.specialInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController
                                .specialProductModel.data?.length ??
                            0,
                        itemBuilder: (context, index) {
                          return ProductItemPreviewCard(
                            productData: productController
                                .specialProductModel.data![index],
                          );
                        }),
                  );
                }),

                const SizedBox(
                  height: 16,
                ),
                SectionHeader(headerName: "New", onTabSeeAll: () {}),
                const SizedBox(
                  height: 16,
                ),
                GetBuilder<ProductController>(builder: (productController) {
                  if (productController.newInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            productController.newProductModel.data?.length ?? 0,
                        itemBuilder: (context, index) {
                          return ProductItemPreviewCard(
                            productData:
                                productController.newProductModel.data![index],
                          );
                        }),
                  );
                }),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: const [
                //       ProductItemPreviewCard(),
                //       ProductItemPreviewCard(),
                //       ProductItemPreviewCard(),
                //       ProductItemPreviewCard(),
                //       ProductItemPreviewCard(),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
