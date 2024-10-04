import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/utils/app_utils.dart';

class CookiesButton extends StatelessWidget {
  const CookiesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: FloatingActionButton(
        heroTag: 'cookies',
        shape: const CircleBorder(),
        onPressed: () => AppUtils().showBannerCookies(context),
        backgroundColor: AppColors.blue,
        child: const Icon(
          FontAwesomeIcons.cookie,
          color: AppColors.white,
          size: 30,
        ),
      ),
    );
  }
}
