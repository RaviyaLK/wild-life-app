import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/authentication/signup/sign_up_screen.dart';
import 'package:wild_life/features/home/officer_home/officer_home_screen.dart';
import 'package:wild_life/features/home/user_home/user_home_screen.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/foundations.dart';
import 'package:wild_life/themes/foundations/text_styles.dart';
import 'package:wild_life/themes/tokens/static_assets.dart';

class SignInScreen extends StatefulWidget {
  static const String path = '/sign-in';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

TextEditingController? emailController;
TextEditingController? passwordController;
TabController? _tabController;

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  late final screenSize = context.screenSize;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.imageBottomColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: screenSize.height * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(StaticAssets.backgroundImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Welcome to WildLifeApp!')
                      .asScreenTitle()
                      .colorRegular(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Select the user type to login as')
                      .asBody()
                      .colorGreen(),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.tabBarColor,
                        borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.fromLTRB(15, 0, 15, 19),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                    child: Theme(
                      data: theme.copyWith(
                        colorScheme: theme.colorScheme.copyWith(
                          surfaceVariant: Colors.transparent,
                        ),
                      ),
                      child: TabBar(
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: bodyStyle,
                          unselectedLabelStyle: bodyStyle,
                          unselectedLabelColor: AppColors.textButtonColor,
                          labelColor: AppColors.tabBarLineColor,
                          indicator: UnderlineTabIndicator(
                              borderSide: const BorderSide(
                                  width: 5, color: AppColors.tabBarLineColor),
                              borderRadius: BorderRadius.circular(30)),
                          tabs: const [
                            Tab(
                              text: 'Public User',
                            ),
                            Tab(
                              text: 'Beat Officer',
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenSize.height * 0.5,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: AppTextField(labelText: 'Enter NIC'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: AppTextField(
                                labelText: 'Enter Password',
                                isSafeText: true,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: SizedBox(
                                width: double.infinity,
                                child: AppButton.primary(
                                  label: 'Sign In',
                                  onPressed: () {
                                    context.push(UserHomeScreen.path);
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Don't have an Account?")
                                .asBody()
                                .colorGreen(),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: SizedBox(
                                width: double.infinity,
                                child: AppButton.fade(
                                  label: 'Create a New Account',
                                  onPressed: () {
                                    context.push(SignUpScreen.path);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child:
                                  AppTextField(labelText: 'Enter Officer ID'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: AppTextField(labelText: 'Enter Password'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: SizedBox(
                                width: double.infinity,
                                child: AppButton.primary(
                                  label: 'Sign In',
                                  onPressed: () {
                                    context.push(OfficerHomeScreen.path);
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
