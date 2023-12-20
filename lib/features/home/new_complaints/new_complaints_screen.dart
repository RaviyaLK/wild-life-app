import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/new_complaints/widgets/complaint_submission_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/dropdown_field/app_dropdown_field.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class NewComplaintScreen extends StatefulWidget {
  static const path = '/new-complaint';
  const NewComplaintScreen({super.key});

  @override
  State<NewComplaintScreen> createState() => _NewComplaintScreenState();
}

final List<Map<String, String>> departments = [
  {'value': '1', 'label': 'Department 1'},
  {'value': '2', 'label': 'Department 2'},
  {'value': '3', 'label': 'Department 3'}
  // Add more items as needed
];
final List<Map<String, String>> districts = [
  {'value': '1', 'label': 'District 1'},
  {'value': '2', 'label': 'District 2'},
  {'value': '3', 'label': 'District 3'}
  // Add more items as needed
];
GlobalKey _formkey = GlobalKey();

class _NewComplaintScreenState extends State<NewComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Submit a new Complaint')
                          .asScreenTitle()
                          .colorRegular(),
                      const SizedBox(height: 15),
                      const Text(
                              'Please fill the form and submit to make a complaint.')
                          .asBody()
                          .colorGreen(),
                      const SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppTextField(
                          labelText: 'Title',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppDropDownField(
                          labelText: 'Department',
                          items: departments,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const AppTextField(
                          labelText: 'Description',
                          isMultiLine: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppDropDownField(
                          labelText: 'District',
                          items: districts,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const AppTextField(labelText: 'LandMark(Optional)'),
                        const SizedBox(
                          height: 15,
                        ),
                        const AppTextField(
                          labelText: 'Add Location note',
                          isMultiLine: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const AbsorbPointer(
                            child: AppTextField(
                              icon: Icons.abc,
                              labelText: 'Upload Photo(Optional)',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const AbsorbPointer(
                            child: AppTextField(
                              icon: Icons.abc,
                              labelText: 'Upload Photo(Optional)',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const AbsorbPointer(
                            child: AppTextField(
                              icon: Icons.abc,
                              labelText: 'Upload Photo(Optional)',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const AbsorbPointer(
                            child: AppTextField(
                              icon: Icons.abc,
                              labelText: 'Upload Video(Optional)',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        ),
                        // ... (rest of the widgets)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          decoration: const BoxDecoration(color: AppColors.background),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: SizedBox(
              width: double.infinity,
              height: screenSize.height * 0.15,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: AppButton.primary(
                        label: 'Submit',
                        onPressed: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return const ComplaintSubmittedSheet();
                              });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
          )),
    );
  }
}
