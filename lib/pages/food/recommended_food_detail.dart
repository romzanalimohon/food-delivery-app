import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(text: 'Chinese Side', size: Dimensions.font26,)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColor.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food2.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: '''When Tsukasa Yuzaki receives a brand new smartphone as a surprise gift from her husband Nasa, she is delighted, quickly adding in contacts and mastering the arts of LINE and sticker-sending. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under. ng. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under?. er husband Nasa, she is delighted, quickly adding in contacts and mastering the arts of LINE and sticker-sending. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under. ng. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat. t the loneliness that threatens to pull her under. ng. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under?. er husband Nasa, she is delighted, quickly adding in contacts and mastering the arts of LINE and sticker-sending. However, her joy is short-lived: a former coworker calls in Nasa for a difficult job, and Tsukasa is dismayed to learn that her beloved might have to work through the night.

                              Faced with her first night alone since her marriage to Nasa, will Tsukasa and her new phone be able to overcome the distance that separates the young couple and defeat the loneliness that threatens to pull her under. ng. However, her joy is short-lived'''),

                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                  backgroundColor: AppColor.mainColor,),
                BigText(text: '\$12.88 '+' X '+' 0 ', color: AppColor.mainBlackColor, size: Dimensions.font26,),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  icon: Icons.add,
                  backgroundColor: AppColor.mainColor,)
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: Dimensions.screenWidth,
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
                      child: Icon(
                        Icons.favorite,
                        color: AppColor.mainColor,
                      )
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
            ],
          )
        ],
      ),
    );
  }
}
