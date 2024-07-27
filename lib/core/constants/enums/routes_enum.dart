import 'package:dating_app/presentation/pages/authentication/authentication/authentication_page.dart';
import 'package:dating_app/presentation/pages/authentication/onboarding/onboarding_page.dart';
import 'package:dating_app/presentation/pages/main/main_page.dart';
import 'package:dating_app/presentation/screens/create_profile/create_profile_screen.dart';
import 'package:dating_app/presentation/screens/not_found/not_found_screen.dart';
import 'package:dating_app/presentation/screens/verification_code_auth/pre_verification_screen.dart';
import 'package:flutter/material.dart';

enum RoutesEnum {
  onboarding(
    path: '/onboarding',
    page: OnboardingPage(),
    routeType: RouteTypes.page,
  ),
  authentication(
    path: '/authentication',
    page: AuthenticationPage(),
    routeType: RouteTypes.page,
  ),
  preVerification(
    path: '/pre-verification',
    page: PreVerificationScreen(),
    routeType: RouteTypes.screen,
  ),
  createProfile(
    path: '/create-profile',
    page: CreateProfileScreen(),
    routeType: RouteTypes.page,
  ),
  main(
    path: '/main',
    page: MainPage(),
    routeType: RouteTypes.page,
  ),
  notFound(
    path: '/not-found',
    page: NotFoundScreen(),
    routeType: RouteTypes.screen,
  );

  const RoutesEnum({
    required this.path,
    required this.page,
    required this.routeType,
  });

  final String path;
  final Widget page;
  final RouteTypes routeType;

  String get name => path;

  @override
  String toString() => path;
}

enum RouteTypes { page, screen }
