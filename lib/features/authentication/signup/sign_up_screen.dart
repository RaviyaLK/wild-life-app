import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/authentication/widgets/create_account_sheet.dart';
import 'package:wild_life/features/authentication/widgets/otp_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  static const path = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Create a New Account').asScreenTitle().colorRegular(),
              const SizedBox(
                height: 15,
              ),
              const Text('Join Us! Lets make the world a better place!')
                  .asBody()
                  .colorGreen(),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(
                labelText: 'Name',
              ),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(labelText: 'Email'),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(labelText: 'Phone Number'),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(
                labelText: 'Address',
                isMultiLine: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(labelText: 'NIC'),
              const SizedBox(
                height: 15,
              ),
              const AppTextField(
                labelText: 'Password',
                isSafeText: true,
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton.primary(
                    label: 'Create Account',
                    onPressed: () {
                      showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (_) {
                            return const OTPBottomSheet();
                          }).then((value) => showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (_) {
                            return const CreateAccountBottomSheet();
                          }));
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
