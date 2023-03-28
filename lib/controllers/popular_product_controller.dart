import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantitly = 0;
  int get quantity => _quantitly;

  Future<void> getPopularProductList() async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode == 200){
      print('got products');
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      update();
      _isLoaded = true;

    }else{

    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      print('added');
      _quantitly = checkQuantity(_quantitly+1);
    }else{
      _quantitly = checkQuantity(_quantitly-1);
    }
    update();
  }

  int checkQuantity(int quantity){
    if(quantity<0){
      Get.snackbar("Item count", "You can't reduce more !",
      backgroundColor: AppColor.mainColor, colorText: Colors.white
      );
      return 0;
    }else if(quantity > 20){
      Get.snackbar("Item count", "You can't add more !",
          backgroundColor: AppColor.mainColor, colorText: Colors.white
      );
      return 20;
    }else{
      return quantity;
    }
  }

  void initProduct(){
    _quantitly = 0;
  }

}