import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/food3.png'),
                  )
                ),
              )),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: 'Chinese Side',),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: 'Introduce'),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: '''When Tsukasa Yuzaki receives a brand new smartphone as a surprise gift from her husband Nasa, she is delighted, quickly adding in contacts and mastering the arts of LINE and sticker-sending. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                        Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under. ng. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                        Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under?'''),
                    )),
                  ],
                )
          ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottmHeight,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColor.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColor.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: '0'),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColor.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              child: BigText(text: '\$10 | Add to Cart', color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColor.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
