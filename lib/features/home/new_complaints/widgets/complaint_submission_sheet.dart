import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class ComplaintSubmittedSheet extends StatefulWidget {
  const ComplaintSubmittedSheet({super.key});

  @override
  State<ComplaintSubmittedSheet> createState() =>
      _ComplaintSubmittedSheetState();
}

class _ComplaintSubmittedSheetState extends State<ComplaintSubmittedSheet> {
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
            const Text('Complaint Submitted Successfully!')
                .asHeading2()
                .colorRegular(),
            const SizedBox(
              height: 30,
            ),
            const Text(
                    'Thank you! We will address your complaint as soon as possible!')
                .asBody()
                .colorGreen(),
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
