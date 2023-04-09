import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/show_custom_snackbar.dart';
import 'package:food_delivery_app/controllers/auth_controller.dart';
import 'package:food_delivery_app/pages/auth/sign_up_page.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text_field.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();



    void _login(AuthController authController){
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if(email.isEmpty){
        showCustomSnackbar("Type in your email address", title: "Email Address");
      }else if(!GetUtils.isEmail(email)){
        showCustomSnackbar("Type in your valid email address", title: "Valid email address");
      }else if(password.isEmpty){
        showCustomSnackbar("Type in your password", title: "password");
      }else if(password.length<6){
        showCustomSnackbar("password can not be less than six characters", title: "password");
      }else{
        authController.login(email, password).then((status){
          if(status.isSuccess){
            print("Success registration");
          }else{
            showCustomSnackbar(status.message);
          }
        });
      }

    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight*0.05,),
            // app icon
            Container(
              height: Dimensions.screenHeight*0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage(
                      'assets/image/logo_part1.jpg'
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello',
                  style: TextStyle(
                    fontSize: Dimensions.font20*3+Dimensions.font20/2,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('Sign in tour account',
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                      color: Colors.grey[500]
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20,),
            // your phone
            AppTextField(textController: phoneController, hintText: 'Phone', icon: Icons.phone),
            SizedBox(height: Dimensions.height20,),

            // your password
            AppTextField(textController: passwordController, hintText: 'Password', icon: Icons.password_sharp, isObscure: true,),
            SizedBox(height: Dimensions.height20,),

            Row(
              children: [
                Expanded(child: Container()),
                RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                        text: "Sign in to your account",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: Dimensions.font20
                        )
                    )),
                SizedBox(width: Dimensions.width20,)
              ],
            ),

            SizedBox(height: Dimensions.screenHeight*0.05,),
            Container(
              width: Dimensions.screenWidth/2,
              height: Dimensions.screenHeight/13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColor.mainColor
              ),
              child: Center(
                child: BigText(
                  text: 'Sign in',
                  size: Dimensions.font20+Dimensions.font20/2,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: Dimensions.screenHeight*0.05,),
            //SizedBox(height: Dimensions.screenHeight*0.05,),
            //sign up options
            RichText(text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20
                ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage()),
                  text: " Create",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: AppColor.mainBlackColor,
                      fontSize: Dimensions.font20
                  ),
                )
              ]
            )),

          ],
        ),
      ),
    );
  }
}
