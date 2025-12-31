import 'package:event_app_c17_mon_7pm/core/gen/assets.gen.dart';
import 'package:event_app_c17_mon_7pm/core/routes/pages_route_name.dart';
import 'package:event_app_c17_mon_7pm/core/theme/color_pallete.dart';
import 'package:event_app_c17_mon_7pm/core/widgets/custom_elevated_button.dart';
import 'package:event_app_c17_mon_7pm/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Assets.images.logoImg.image(width: 200, height: 200),
            const SizedBox(height: 24),
            CustomTextFormFiled(
              hintText: 'Name',
              prefixIcon: Assets.icons.userIcn.svg(),
            ),
            const SizedBox(height: 16),
            CustomTextFormFiled(
              hintText: 'Email',
              prefixIcon: Assets.icons.mailIcn.svg(),
            ),
            const SizedBox(height: 16),
            CustomTextFormFiled(
              isPassword: true,
              hintText: 'Password',
              prefixIcon: Assets.icons.passwordIcn.svg(),
            ),
            const SizedBox(height: 16),
            CustomTextFormFiled(
              isPassword: true,
              hintText: 'Re-Password',
              prefixIcon: Assets.icons.passwordIcn.svg(),
            ),
            const SizedBox(height: 16),
            CustomElevatedButton(
              buttonText: "Create Account",
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Already Have Account ? ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorPallete.generalTextColor,
                    ),
                  ),
                  WidgetSpan(
                    child: Bounceable(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorPallete.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: ColorPallete.primaryColor,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
