import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/view_complaints/user/user_view_complaint_details_screen.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/card/app_card.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class UserViewComplaintsScreen extends StatefulWidget {
  static const String path = '/user-view-complaints';
  const UserViewComplaintsScreen({super.key});

  @override
  State<UserViewComplaintsScreen> createState() =>
      _UserViewComplaintsScreenState();
}

int totalComplaintCount = 12;
String progressStatus = 'In Progress'.toUpperCase();
String date = '12th Dec 2023';

class _UserViewComplaintsScreenState extends State<UserViewComplaintsScreen> {
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
              const Text('View Submitted Complaints')
                  .asScreenTitle()
                  .colorRegular(),
              const SizedBox(
                height: 15,
              ),
              Text('You have $totalComplaintCount Complaints Submitted')
                  .asBody()
                  .colorGreen(),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(UserViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$progressStatus   *   $date',
                  color: AppColors.complatintCardColor,
                  isIconAvailable: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(UserViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$progressStatus   *   $date',
                  color: AppColors.complatintCardColor,
                  isIconAvailable: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(UserViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$progressStatus   *   $date',
                  color: AppColors.complatintCardColor,
                  isIconAvailable: false,
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
                    label: 'Back to Home',
                    onPressed: () {
                      context.pop();
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
