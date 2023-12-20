import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/authentication/sign_in/sign_in_screen.dart';
import 'package:wild_life/features/home/profile/profile_screen.dart';
import 'package:wild_life/features/home/view_complaints/officer/officer_view_complaints_screen.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/card/app_card.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/tokens/static_assets.dart';

class OfficerHomeScreen extends StatefulWidget {
  static const path = '/officer-home';
  const OfficerHomeScreen({super.key});

  @override
  State<OfficerHomeScreen> createState() => _OfficerHomeScreenState();
}

String officerName = 'Marcus Bolt';
int complatintNumber = 2;

class _OfficerHomeScreenState extends State<OfficerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hey $officerName!').asScreenTitle().colorRegular(),
              const SizedBox(
                height: 15,
              ),
              const Text('What would you like to do today?')
                  .asBody()
                  .colorGreen(),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(OfficerViewComplaintScreen.path);
                },
                child: AppCard(
                  title: 'View Complaints',
                  description: 'You have $complatintNumber Complaints assigned',
                  color: AppColors.homeCardColor,
                  isIconAvailable: true,
                  image: StaticAssets.fileImagePath,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(ProfileScreen.path, extra: true);
                },
                child: const AppCard(
                  title: 'View Profile',
                  description: 'Edit and Manage profile',
                  color: AppColors.homeCardColor,
                  isIconAvailable: true,
                  image: StaticAssets.profileImagePath,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton.outlined(
                    label: 'Sign Out',
                    onPressed: () {
                      context.go(SignInScreen.path);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
