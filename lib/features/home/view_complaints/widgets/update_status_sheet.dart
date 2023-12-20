import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/view_complaints/widgets/update_successful_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/dropdown_field/app_dropdown_field.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class UpdateStatusSheet extends StatefulWidget {
  const UpdateStatusSheet({super.key});

  @override
  State<UpdateStatusSheet> createState() => _UpdateStatusSheetState();
}

final List<Map<String, String>> status = [
  {'value': '1', 'label': 'Assigned'},
  {'value': '2', 'label': 'Opened'},
  {'value': '3', 'label': 'Closed'}
];

class _UpdateStatusSheetState extends State<UpdateStatusSheet> {
  late final screenSize = context.screenSize;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: screenSize.height * 0.6,
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Update Status').asScreenTitle().colorRegular(),
            const SizedBox(
              height: 20,
            ),
            AppDropDownField(labelText: 'Status', items: status),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(
              labelText: 'AddNote(Optional)',
              isMultiLine: true,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: AppButton.primary(
                  label: 'Update',
                  onPressed: () {
                    context.pop();
                    showModalBottomSheet(
                        useRootNavigator: true,
                        context: context,
                        builder: (_) {
                          return const UpdateSuccessfulSheet();
                        });
                  },
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
                  label: 'Close',
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
