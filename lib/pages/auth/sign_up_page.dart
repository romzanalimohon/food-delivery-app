import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
          // your email
          AppTextField(textEditingController: emailController, hintText: 'Email', icon: Icons.email),
          SizedBox(height: Dimensions.height20,),

          // your password
          AppTextField(textEditingController: passwordController, hintText: 'Password', icon: Icons.password_sharp),
          SizedBox(height: Dimensions.height20,),

          // your name
          AppTextField(textEditingController: nameController, hintText: 'Name', icon: Icons.person),
          SizedBox(height: Dimensions.height20,),

          // your phone
          AppTextField(textEditingController: phoneController, hintText: 'Phone', icon: Icons.phone),
          SizedBox(height: Dimensions.height20,),
        ],
      ),
    );
  }
}
