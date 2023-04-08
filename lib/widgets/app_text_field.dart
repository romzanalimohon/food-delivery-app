import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  const AppTextField({Key? key,
  required this.textEditingController,
    required this.hintText,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1,10),
                  color: Colors.grey.withOpacity(0.2)
              )
            ]
        ),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: AppColor.yellowColor,),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30,),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )
            ),
            //Enabled Border
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30,),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )
            ),
            //border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30,),
            ),
          ),
        ));
  }
}
