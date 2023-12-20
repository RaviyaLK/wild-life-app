import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/view_complaints/officer/officer_view_complaints_details_screen.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/card/app_card.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class OfficerViewComplaintScreen extends StatefulWidget {
  static const String path = '/officer-view-complaints';
  const OfficerViewComplaintScreen({super.key});

  @override
  State<OfficerViewComplaintScreen> createState() =>
      _OfficerViewComplaintScreenState();
}

int totalComplaintCount = 2;
String assignStatus = 'Assigned'.toUpperCase();
String date = '12th Dec 2023';

class _OfficerViewComplaintScreenState
    extends State<OfficerViewComplaintScreen> {
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
              Text('You have $totalComplaintCount Complaints Assigned')
                  .asBody()
                  .colorGreen(),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(OfficerViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$assignStatus   *   $date',
                  color: AppColors.complatintCardColor,
                  isIconAvailable: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(OfficerViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$assignStatus   *   $date',
                  color: AppColors.complatintCardColor,
                  isIconAvailable: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  context.push(OfficerViewComplaintsDetailScreen.path);
                },
                child: AppCard(
                  title: 'Title',
                  description: '$assignStatus   *   $date',
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
