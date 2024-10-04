import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/widgets/language_selector.dart';

class GenericAppBar {
  static AppBar genericAppBar({
    String? title,
  }) {
    return AppBar(
      backgroundColor: AppColors.black,
      scrolledUnderElevation: 0,
      title: TextRenderer(
        style: TextRendererStyle.header1,
        child: Text(
          title ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      actions: [
        LanguageSelector(),
      ],
    );
  }
}
