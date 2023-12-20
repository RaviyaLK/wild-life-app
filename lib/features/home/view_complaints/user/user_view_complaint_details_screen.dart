import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/view_complaints/widgets/view_status_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class UserViewComplaintsDetailScreen extends StatefulWidget {
  static const path = '/user-view-complaint-details';
  const UserViewComplaintsDetailScreen({super.key});

  @override
  State<UserViewComplaintsDetailScreen> createState() =>
      _UserViewComplaintsDetailScreenState();
}

GlobalKey _formkey = GlobalKey();

String title = 'Disturbance by Wildlife Activity';
String progressStatus = 'In Progress'.toUpperCase();
String date = '12th Dec 2023';
String department = 'WildLife';

String description =
    'The disturbance involves [describe the type of wildlife activity, such as elephants entering residential areas, monkeys causing damage to crops, etc.].';

String district = 'Yakkala';
String landMark = 'Gate number 24';
String locationNote =
    'Right next to the gate number 24 at the Yakkal forest reservation lake. Around 100m before the big poster .';
String imageName = 'Image 1.png';

 class _UserViewComplaintsDetailScreenState
    extends State<UserViewComplaintsDetailScreen> {
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
                      Text(title).asScreenTitle().colorRegular(),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColors.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 100,
                            height: 25,
                            child: Center(
                                child: Text(progressStatus)
                                    .asHint()
                                    .colorRegular()
                                    .bold()),
                          ),
                          const SizedBox(width: 20),
                          Text(date).asBody().colorRegular()
                        ],
                      ),
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
                        AppTextField(
                          labelText: title,
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        AppTextField(
                          labelText: department,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          labelText: description,
                          isMultiLine: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          labelText: district,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(labelText: landMark),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          labelText: locationNote,
                          isMultiLine: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: AbsorbPointer(
                            child: AppTextField(
                              icon: Icons.abc,
                              labelText: imageName,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                        label: 'View Status',
                        onPressed: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return const ViewStatusSheet();
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
                        label: 'Back',
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
