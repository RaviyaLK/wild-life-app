import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/authentication/sign_in/sign_in_screen.dart';
import 'package:wild_life/features/home/new_complaints/new_complaints_screen.dart';
import 'package:wild_life/features/home/profile/profile_screen.dart';
import 'package:wild_life/features/home/view_complaints/user/user_view_complaints_screen.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/card/app_card.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/tokens/static_assets.dart';

class UserHomeScreen extends StatefulWidget {
  static const path = '/user-home';
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

String userName = 'Perter Parker';
int complaintCount = 12;

class _UserHomeScreenState extends State<UserHomeScreen> {
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
              Text('Hey $userName!').asScreenTitle().colorRegular(),
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
                  context.push(NewComplaintScreen.path);
                },
                child: const AppCard(
                  title: 'Submit a new Complaint',
                  description: 'Found anything mysterious?',
                  color: AppColors.homeCardColor,
                  isIconAvailable: true,
                  image: StaticAssets.helpImagePath,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(UserViewComplaintsScreen.path);
                },
                child: AppCard(
                  title: 'View Submitted Complaints',
                  description: 'You have $complaintCount Complaints',
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
                  context.push(ProfileScreen.path,extra: false);
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
                height: screenSize.height * 0.35,
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
