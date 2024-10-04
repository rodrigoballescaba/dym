import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/data/services/controller.dart';

class LanguageSelector extends StatelessWidget {
  final Controller _controller = Get.find();

  LanguageSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: PopupMenuButton<String>(
        menuPadding: EdgeInsets.zero,
        initialValue: _controller.language.value,
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.language),
        onSelected: (String result) {
          _controller.language.value = result;
        },
        itemBuilder: (BuildContext context) => [
          _optionsLanguageSelector(
            AppConstants.localeDE,
            20,
          ),
          _optionsLanguageSelector(
            AppConstants.localeEN,
            20,
          ),
          _optionsLanguageSelector(
            AppConstants.localeES,
            20,
          ),
        ],
      ),
    );
  }

  PopupMenuEntry<String> _optionsLanguageSelector(Locale locale, double size) {
    return PopupMenuItem<String>(
      onTap: () async {
        await Get.updateLocale(locale);
      },
      padding: EdgeInsets.zero,
      value: locale.languageCode,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: CountryFlag.fromCountryCode(
            shape: const Circle(),
            locale.countryCode!,
            height: size,
            width: size,
          ),
        ),
      ),
    );
  }
}
