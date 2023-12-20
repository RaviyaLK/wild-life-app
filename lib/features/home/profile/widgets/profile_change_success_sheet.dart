import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class ProfileChangeSuccessSheet extends StatefulWidget {
  const ProfileChangeSuccessSheet({super.key});

  @override
  State<ProfileChangeSuccessSheet> createState() =>
      _ProfileChangeSuccessSheetState();
}

class _ProfileChangeSuccessSheetState extends State<ProfileChangeSuccessSheet> {
  late final screenSize = context.screenSize;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: screenSize.height * 0.4,
      padding: MediaQuery.of(context).viewInsets,
      duration: StaticDurations.bottomSheetLoading,
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your Changes were saved Successfully!')
                .asScreenTitle()
                .colorRegular(),
            const SizedBox(
              height: 30,
            ),
            const Text('You have updated your profile!').asBody().colorGreen(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: AppButton.primary(
                  label: 'Done',
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
