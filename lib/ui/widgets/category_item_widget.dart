import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

class CategoriesItemsWidget extends StatelessWidget {
  const CategoriesItemsWidget({
    super.key, required this.categoryItemName, required this.icon, required this.onTab,
  });

  final String categoryItemName;
  final IconData icon;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon,size: 40,color: AppColors.primaryColor,),
                ),
                const SizedBox(height: 4,),
                Text(categoryItemName,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: AppColors.primaryColor
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
