import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/profile/widgets/change_profile_details_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/card/app_card.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/tokens/static_assets.dart';

class ProfileScreen extends StatefulWidget {
  final bool isOfficer;
  static const path = '/profile';
  const ProfileScreen({super.key, required this.isOfficer});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

String? name;
String? email;
String? phoneNumber;
String? address;
String? nic;
String? officerId;
String? password;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.isOfficer == true) {
      name = 'Marcus bolt';
      email = 'marcusbolt@gmail.com';
      phoneNumber = '0775235511';
      address = '200, Kandy Road, Gampola';
      officerId = 'B123129';
      password = 'Change Password';
    } else {
      name = 'Peter parker';
      email = 'petraparker@gmail.com';
      phoneNumber = '0771231212';
      address = '12, Kandy Road, Gampola';
      nic = '8723901237V';
      password = 'Change Password';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Scaffold(
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
                      const Text('My Profile').asScreenTitle().colorRegular(),
                      const SizedBox(height: 5),
                      const Text(
                              'You can edit your details if they don’t match.')
                          .asHint()
                          .colorGreen()
                          .bold(),
                      const SizedBox(width: 20),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      AppCard(
                        title: (widget.isOfficer) ? 'Officer Name' : 'Name',
                        description: name ?? '',
                        color: AppColors.homeCardColor,
                        isIconAvailable: true,
                        image: StaticAssets.editImagePath,
                        onTap: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return ChangeProfileDetailsSheet(
                                  title: (widget.isOfficer)
                                      ? 'Change Officer Name'
                                      : 'Change Name',
                                  labelText: name!,
                                );
                              });
                        },
                      ),
                      AppCard(
                        title: 'Email',
                        description: email ?? '',
                        color: AppColors.homeCardColor,
                        isIconAvailable: true,
                        image: StaticAssets.editImagePath,
                        onTap: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return ChangeProfileDetailsSheet(
                                  title: 'Change Email',
                                  labelText: email!,
                                );
                              });
                        },
                      ),
                      AppCard(
                        title: 'Phone Number',
                        description: phoneNumber ?? '',
                        color: AppColors.homeCardColor,
                        isIconAvailable: true,
                        image: StaticAssets.editImagePath,
                        onTap: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return ChangeProfileDetailsSheet(
                                  title: 'Change Phone Number',
                                  labelText: phoneNumber!,
                                );
                              });
                        },
                      ),
                      AppCard(
                        title: 'Address',
                        description: address ?? '',
                        color: AppColors.homeCardColor,
                        isIconAvailable: true,
                        image: StaticAssets.editImagePath,
                        onTap: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return ChangeProfileDetailsSheet(
                                  title: 'Change Address',
                                  labelText: address!,
                                );
                              });
                        },
                      ),
                      AppCard(
                          title: (widget.isOfficer) ? 'Officer ID' : 'NIC',
                          description:
                              (widget.isOfficer) ? officerId ?? '' : nic ?? '',
                          color: AppColors.homeCardColor,
                          isIconAvailable: false),
                      AppCard(
                        title: 'Password',
                        description: password ?? '',
                        color: AppColors.homeCardColor,
                        isIconAvailable: true,
                        image: StaticAssets.editImagePath,
                        onTap: () {
                          showModalBottomSheet(
                              useRootNavigator: true,
                              context: context,
                              builder: (_) {
                                return const ChangeProfileDetailsSheet(
                                  title: 'Change Password',
                                  labelText: 'Enter New Password',
                                );
                              });
                        },
                      ),

                      const SizedBox(
                        height: 80,
                      ),
                      // ... (rest of the widgets)
                    ],
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
              height: screenSize.height * 0.09,
              child: Column(
                children: [
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
