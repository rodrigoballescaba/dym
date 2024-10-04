import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:tattoos/app/pages/contact/contact_page.dart';
import 'package:tattoos/app/pages/gallery/gallery_page.dart';
import 'package:tattoos/app/pages/landing/landing_page.dart';
import 'package:tattoos/app/pages/legal/cookies_page.dart';
import 'package:tattoos/app/pages/legal/privacy_policy_page.dart';
import 'package:tattoos/app/pages/tattoo_detail/tattoo_detail.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/router/animation_effect_page.dart';
import 'package:tattoos/data/services/controller.dart';

final Controller _controller = Get.find();

final GoRouter goRouter = GoRouter(
  initialLocation: AppConstants.routeHome,
  observers: [seoRouteObserver],
  routerNeglect: true,
  routes: [
    GoRoute(
      path: AppConstants.routeHome,
      name: AppConstants.routeHome,
      pageBuilder: (context, state) {
        return getTransition(0, const LandingPage());
      },
    ),
    GoRoute(
      path: AppConstants.routeGallery,
      name: AppConstants.routeGallery,
      pageBuilder: (context, state) {
        return getTransition(1, const GalleryPage());
      },
    ),
    GoRoute(
      path: AppConstants.routeContact,
      name: AppConstants.routeContact,
      pageBuilder: (context, state) {
        return getTransition(2, const ContactPage());
      },
    ),
    GoRoute(
      path: AppConstants.routePrivacy,
      name: AppConstants.routePrivacy,
      pageBuilder: (context, state) {
        return getTransition(3, const PrivacyPolicyPage());
      },
    ),
    GoRoute(
      path: AppConstants.routeCookies,
      name: AppConstants.routeCookies,
      pageBuilder: (context, state) {
        return getTransition(4, const CookiesPage());
      },
    ),
    GoRoute(
      path: AppConstants.routeTattooDetail,
      name: AppConstants.routeTattooDetail,
      pageBuilder: (context, state) {
        final int index = (state.extra ?? 0) as int;
        return getTransition(5, TattooDetailPage(index: index));
      },
    ),
  ],
);

CustomTransitionPage getTransition(int? indexPage, Widget page) {
  if (indexPage != null) {
    _controller.indexMenu(indexPage);
  }

  return CustomTransitionPage(
    child: page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return Stack(
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, _) {
              return CustomPaint(
                size: MediaQuery.of(context).size,
                painter: CutEffectPainter(animation.value),
              );
            },
          ),
          FadeTransition(
            opacity: animation,
            child: child,
          ),
        ],
      );
    },
  );
}
