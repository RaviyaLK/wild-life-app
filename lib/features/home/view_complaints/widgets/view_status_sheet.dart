import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class ViewStatusSheet extends StatefulWidget {
  const ViewStatusSheet({super.key});

  @override
  State<ViewStatusSheet> createState() => _ViewStatusSheetState();
}

String dateAndTime = '12th Dec 2023 at 12:01PM';
String attendedPerson = 'Marcus Bolt';
String attendedNote = 'No Note Attached ';
String assignedNote = 'Marcus, attend to this issue immediately';
String status = 'Opened';
String statusNote = 'No note attached';
String assignedPerson = 'John Matt';

class _ViewStatusSheetState extends State<ViewStatusSheet> {
  late final screenSize = context.screenSize;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: screenSize.height * 0.5,
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
            const Text('Status Hitory').asScreenTitle().colorRegular(),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(dateAndTime).asFootnote().colorGreen(),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Staus Update - Attended by $attendedPerson')
                            .asBody()
                            .colorRegular(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(attendedNote).asHint().colorRegular().bold(),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(dateAndTime).asFootnote().colorGreen(),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Staus Update - Assigned by $assignedPerson')
                            .asBody()
                            .colorRegular(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(assignedNote).asHint().colorRegular().bold(),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(dateAndTime).asFootnote().colorGreen(),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Staus Update - $status').asBody().colorRegular(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(statusNote).asHint().colorRegular().bold(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
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
