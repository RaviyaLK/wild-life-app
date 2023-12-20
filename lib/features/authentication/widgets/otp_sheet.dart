import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class OTPBottomSheet extends StatefulWidget {
  const OTPBottomSheet({super.key});

  @override
  State<OTPBottomSheet> createState() => _OTPBottomSheetState();
}

class _OTPBottomSheetState extends State<OTPBottomSheet> {
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
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter the OTP sent to your phone')
                .asScreenTitle()
                .colorRegular(),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(labelText: 'Enter OTP'),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: AppButton.primary(
                  label: 'Submit',
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: AppButton.outlined(
                  label: 'Cancel',
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
