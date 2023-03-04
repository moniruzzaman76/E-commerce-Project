import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class HomeBannerSlider extends StatelessWidget {
  HomeBannerSlider({Key? key}) : super(key: key);

  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            carouselController:_carouselController ,
            options: CarouselOptions(
              autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                viewportFraction: 1,
                height: 200.0,
                onPageChanged: (index,_){
                  _currentSelectedIndex.value = index;
                }
            ),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor
                      ),
                      alignment: Alignment.center,
                      child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 5,),
          ValueListenableBuilder(
              valueListenable: _currentSelectedIndex,
              builder: (context,updateValue,_){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0; i<5;i++)
                      Container(
                        margin: const EdgeInsets.all(3),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: i == _currentSelectedIndex.value ? AppColors.primaryColor : null,
                            border: Border.all(
                                color:i == _currentSelectedIndex.value ? AppColors.primaryColor : Colors.grey
                            )
                        ),
                      )
                  ],
                );
              }
          ),

        ],
      ),
    );
  }
}





