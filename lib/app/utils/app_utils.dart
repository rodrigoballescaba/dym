import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/widgets/cookies/cookie_consent.dart';
import 'package:tattoos/generated/l10n.dart';

class AppUtils {
  //final Controller _controller = Get.find();

  void showSnackBar(String? error, {bool isError = true}) {
    /*Get.snackbar(
      isError ? S.current.error_title : S.current.success,
      '$error',
      margin: EdgeInsets.all(20.w),
      snackPosition: SnackPosition.BOTTOM,
      colorText: AppColors.white,
      backgroundColor: AppColors.blueLight,
      icon: IconGeneric(
        highlightColor: AppColors.transparent,
        onPressedCallback: () {},
        padding: EdgeInsets.zero,
        color: AppColors.white,
        size: 25.w,
        icon: const Icon(Icons.error),
      ),
    );*/
  }

  void showImageDialog(
    BuildContext context,
    String imagePath,
    String tag,
    NavigatorState navigatorState,
  ) {
    showDialog(
      barrierColor: AppColors.black.withOpacity(.8),
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.transparent,
          insetPadding: const EdgeInsets.all(10),
          child: Hero(
            tag: tag,
            child: InteractiveViewer(
              panEnabled: true,
              minScale: .5,
              maxScale: 3,
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(.8),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () => navigatorState.pop(),
                        icon: const Icon(
                          color: AppColors.white,
                          Icons.close_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Color getRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  void showBannerCookies(BuildContext context) {
    showCookieConsent(
      context,
      cookiePolicyUrl: Uri.parse('https://javisank.com/cookies'),
      title: S.current.cookies_title,
      dismissible: false,
      acceptAllLabel: S.current.cookies_button_accept,
      rejectAllLabel: S.current.cookies_button_decline,
      showAcceptNecessary: false,
      showRejectAll: true,
      showAcceptAll: true,
      showCustomize: false,
      consent: S.current.cookies_subtitle,
      categories: [
        CookeConsentCategory(
          id: AppConstants.idCookies,
          name: 'Strictly Necessary Cookies',
          description: S.current.cookies_description,
        ),
      ],
    );
  }
}
