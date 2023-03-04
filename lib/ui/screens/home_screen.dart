import 'package:e_commerce/ui/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/category_item_widget.dart';
import '../widgets/home/home_barner_slider.dart';
import '../widgets/home/section_slider.dart';
import '../widgets/product_item_preview_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
          const SizedBox(width: 7,),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              Icons.call,
              size: 18,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(width: 7,),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              Icons.notifications_active_outlined,
              size: 18,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(width: 7,),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration:InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(color: Colors.grey),
                  )
                ) ,
              ),
              const SizedBox(height: 20,),
              HomeBannerSlider(),
              const SizedBox(height: 20,),
              SectionHeader(
                headerName: 'All Categories',
                onTabSeeAll: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>  CategoryScreen()));
                },
              ),
              const SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesItemsWidget(
                      onTab: (){},
                      icon:Icons.computer,
                      categoryItemName: 'Electronics',
                    ),
                    CategoriesItemsWidget(
                      onTab: (){},
                      icon:Icons.food_bank_outlined,
                      categoryItemName: 'Food',
                    ),
                    CategoriesItemsWidget(
                      onTab: (){},
                      icon:Icons.favorite_sharp,
                      categoryItemName: 'Fashion',
                    ),
                    CategoriesItemsWidget(
                      onTab: (){},
                      icon:Icons.female_outlined,
                      categoryItemName: 'Furniture',
                    ),
                    CategoriesItemsWidget(
                      onTab: (){},
                      icon:Icons.mobile_friendly,
                      categoryItemName: 'Mobile',
                    ),
                  ],
                ),
              ),
              SectionHeader(headerName: "Popular", onTabSeeAll: (){

              }),
              const SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SectionHeader(headerName: "Special", onTabSeeAll: (){

              }),
              const SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SectionHeader(headerName: "New", onTabSeeAll: (){

              }),
              const SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


