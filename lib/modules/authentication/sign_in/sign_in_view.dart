import 'package:event_app_c17_mon_7pm/core/gen/assets.gen.dart';
import 'package:event_app_c17_mon_7pm/core/routes/pages_route_name.dart';
import 'package:event_app_c17_mon_7pm/core/theme/color_pallete.dart';
import 'package:event_app_c17_mon_7pm/core/widgets/custom_elevated_button.dart';
import 'package:event_app_c17_mon_7pm/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logoImg.image(width: 200, height: 200),
            const SizedBox(height: 24),
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
            Bounceable(
              onTap: () {
                Navigator.pushNamed(context, PagesRouteName.forgetPassword);
              },
              child: Text(
                "Forget Password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: ColorPallete.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorPallete.primaryColor,
                  decorationThickness: 2,
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomElevatedButton(buttonText: "Login", onPressed: () {}),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don’t Have Account ? ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorPallete.generalTextColor,
                    ),
                  ),
                  WidgetSpan(
                    child: Bounceable(
                      onTap: () {
                        Navigator.pushNamed(context, PagesRouteName.signUp);
                      },
                      child: Text(
                        "Create Account",
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
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 40,
                    endIndent: 40,
                    color: ColorPallete.primaryColor,
                  ),
                ),
                Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorPallete.primaryColor,
                  ),
                ),
                Expanded(
                  child: Divider(
                    indent: 40,
                    endIndent: 40,
                    color: ColorPallete.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              customChild: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.googleIcn.svg(),
                  Text(
                    "Login With Google",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: ColorPallete.primaryColor,
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
