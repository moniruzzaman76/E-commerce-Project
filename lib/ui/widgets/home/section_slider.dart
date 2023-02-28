import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.headerName, required this.onTabSeeAll,
  });

  final String headerName;
  final VoidCallback onTabSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headerName,style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87),
        ),
        TextButton(
            onPressed: onTabSeeAll,
            child:  Text('See All',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primaryColor
              ),

            ))
      ],
    );
  }
}