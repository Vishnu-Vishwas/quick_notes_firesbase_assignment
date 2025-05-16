import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/constants/assest_constants.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';
import 'package:quick_notes/features/auth/presentation/widgets/check_box_widget.dart';
import 'package:quick_notes/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:quick_notes/features/common/presentation/widgets/button_widget.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,

      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset(AssetConstants.backArrow),
        ),
        leadingWidth: 100,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.85,
          ),
          // height: MediaQuery.sizeOf(context).height * 0.85,
          width: double.infinity,

          decoration: BoxDecoration(
            color: colorScheme.tertiary,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(70),
              topLeft: Radius.circular(70),
            ),
          ),

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 90,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    TextConstants.welcomeBack,
                    style: textTheme.headlineLarge,
                  ),

                  SizedBox(height: 20),

                  Text(
                    TextConstants.loginToYourAccount,
                    style: textTheme.bodyLarge,
                  ),

                  SizedBox(
                    height: 60,
                  ), // TODO: Ask sir what can be done in this place

                  Form(
                    key: _key,
                    child: Column(
                      spacing: 30,
                      children: [
                        TextFormFieldWidget(
                          hintText: TextConstants.email,
                          controller: _emailController,
                        ),
                        TextFormFieldWidget(
                          hintText: TextConstants.password,
                          controller: _passwordController,
                          icon: Image.asset(AssetConstants.eyeHideText),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 22),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CheckBoxWidget(),
                          Text(
                            TextConstants.rememberMe,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSecondary,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        TextConstants.forgotPassword,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSecondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 48),

                  ButtonWidget(
                    text: TextConstants.login,
                    buttonColor: colorScheme.primary,
                    horizontalPadding: 116,
                    verticlePadding: 10,
                    borderRadius: 18,
                    requireBorder: true,
                    onTap: () {},
                  ),

                  SizedBox(height: 14),

                  Text(
                    TextConstants.dontHaveAnAccount,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSecondary,
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    TextConstants.orContinueWith,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSecondary,
                      fontWeight: FontWeight.w100,
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetConstants.facebook),

                      // todo: is this right?
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 2,

                          color: colorScheme.primary,
                        ),
                      ),
                      Image.asset(AssetConstants.google),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
