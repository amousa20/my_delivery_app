import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/popular_product_controller.dart';
import '../../controllers/recommended_product_controller.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
   const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  Future<void> _loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(child: Column(
    children: [
    //showing the header
    Container(
    padding: EdgeInsets.only(
        left: Dimensions.width20, right: Dimensions.width20),
    margin: EdgeInsets.only(
    top: Dimensions.height45, bottom: Dimensions.height15),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    children: [
    BigText(
    text: "Palestine",
    color: AppColors.mainColor,
    size: 30,
    ),
    Row(
    children: [
    SmallText(
    text: "Gaza",
    color: Colors.black54,
    ),
    const Icon(Icons.arrow_drop_down_rounded),
    ],
    ),
    ],
    ),
    Center(
    child: Container(
    width: Dimensions.height45,
    height: Dimensions.height45,
    decoration: BoxDecoration(
    borderRadius:
    BorderRadius.circular(Dimensions.radius15),
    color: AppColors.mainColor),
    child: Icon(
    Icons.search,
    color: Colors.white,
    size: Dimensions.iconSize24,
    ),
    ),
    ),
    ],
    ),
    ),
    //showing the body
    const Expanded(
    child: SingleChildScrollView(
    child: FoodPageBody(),
    ),
    ),
    ],
    ), onRefresh: _loadResource);
  }
}
