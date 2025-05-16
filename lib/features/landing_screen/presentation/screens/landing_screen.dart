import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/constants/app_colors.dart';
import 'package:quick_notes/core/constants/assest_constants.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/navigation/app_router.dart';
import 'package:quick_notes/features/common/presentation/widgets/button_widget.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetConstants.landingPagImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // context.router.replace(AnimeListRoute());
                        },
                        child: Text(
                          TextConstants.skip,
                          style: textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    TextConstants.quickNotes,
                    style: textTheme.displayMedium,
                  ),
                  Column(
                    spacing: 22,
                    children: [
                      ButtonWidget(
                        text: TextConstants.login,
                        buttonColor: colorScheme.secondary,
                        onTap: () {
                          context.router.push(LoginRoute());
                        },
                      ),
                      ButtonWidget(
                        text: TextConstants.signup,
                        buttonColor: AppColors.lightGrey,
                        textColor: AppColors.black,
                        fontSize: 20,
                        onTap: () {
                          context.router.push(SignupRoute());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
