import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/features/authentication/sign_in/sign_in_screen.dart';
import 'package:wild_life/features/authentication/signup/sign_up_screen.dart';
import 'package:wild_life/features/authentication/splash_screen.dart';
import 'package:wild_life/features/home/officer_home/officer_home_screen.dart';
import 'package:wild_life/features/home/new_complaints/new_complaints_screen.dart';
import 'package:wild_life/features/home/profile/profile_screen.dart';
import 'package:wild_life/features/home/user_home/user_home_screen.dart';
import 'package:wild_life/features/home/view_complaints/officer/officer_view_complaints_details_screen.dart';
import 'package:wild_life/features/home/view_complaints/officer/officer_view_complaints_screen.dart';
import 'package:wild_life/features/home/view_complaints/user/user_view_complaint_details_screen.dart';
import 'package:wild_life/features/home/view_complaints/user/user_view_complaints_screen.dart';

part 'route_transition.dart';

final routerConfig = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: SplashScreen.path,
    routes: [
      GoRoute(
          path: SignInScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const SignInScreen(),
              restorationId: SignInScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: SplashScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const SplashScreen(),
              restorationId: SplashScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: SignUpScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const SignUpScreen(),
              restorationId: SignUpScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: OfficerHomeScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const OfficerHomeScreen(),
              restorationId: OfficerHomeScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: UserHomeScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const UserHomeScreen(),
              restorationId: UserHomeScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: NewComplaintScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const NewComplaintScreen(),
              restorationId: NewComplaintScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: UserViewComplaintsScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const UserViewComplaintsScreen(),
              restorationId: UserViewComplaintsScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: OfficerViewComplaintScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const OfficerViewComplaintScreen(),
              restorationId: OfficerViewComplaintScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: OfficerViewComplaintsDetailScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const OfficerViewComplaintsDetailScreen(),
              restorationId: OfficerViewComplaintsDetailScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: UserViewComplaintsDetailScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state, const UserViewComplaintsDetailScreen(),
              restorationId: UserViewComplaintsDetailScreen.path,
              type: SlideTransitionType.bottomToTop)),
      GoRoute(
          path: ProfileScreen.path,
          pageBuilder: (context, state) => pageTransition(
              context, state,  ProfileScreen(isOfficer: state.extra as bool),
              restorationId: ProfileScreen.path,
              type: SlideTransitionType.bottomToTop)),
    ]);
