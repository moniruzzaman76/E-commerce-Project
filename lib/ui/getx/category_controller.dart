import 'package:e_commerce/data/models/category_model.dart';
import 'package:e_commerce/data/network_utils.dart';
import 'package:get/get.dart';
import '../../data/urls.dart';

class CategoryController extends GetxController{
  CategoryModel categoryModel = CategoryModel();
  bool getCategoryInProgress = false;
  Future<bool>getCategories()async{
    getCategoryInProgress = true;
    update();
    final result = await NetworkUtils().getMethod(Urls.categoryListUrl);
    getCategoryInProgress = false;
    if(result != null){
      categoryModel = CategoryModel.fromJson(result);
      update();
      return true;
    }else{
      update();
      return false;
    }
  }
}