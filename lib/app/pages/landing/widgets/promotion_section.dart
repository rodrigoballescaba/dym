import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/generated/assets.gen.dart';
import 'package:tattoos/generated/l10n.dart';

class PromotionSection extends StatefulWidget {
  const PromotionSection({super.key});

  @override
  State<PromotionSection> createState() => _PromotionSectionState();
}

class _PromotionSectionState extends State<PromotionSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth < 600
            ? 30
            : constraints.maxWidth < 1150
                ? 60
                : 50;

        return Padding(
          padding: constraints.maxWidth < 1150
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (constraints.maxWidth < 1150)
                const SizedBox(
                  height: 20,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: constraints.maxWidth >= 1150
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: [
                    TextRenderer(
                      style: TextRendererStyle.header6,
                      child: Text(
                        S.current.landing_promotion_section_title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              if (constraints.maxWidth < 1150)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      promotionTile(
                        title: S.current.landing_promotion_tile_title,
                        image: Assets.images.tattoo18.path,
                        fontSize: fontSize,
                        isMobile: true,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      promotionTile(
                        title: S.current.landing_promotion_tile_title2,
                        image: Assets.images.tattoo20.path,
                        fontSize: fontSize,
                        isMobile: true,
                      ),
                    ],
                  ),
                ),
              if (constraints.maxWidth >= 1150)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: promotionTile(
                          title: S.current.landing_promotion_tile_title,
                          image: Assets.images.tattoo18.path,
                          fontSize: fontSize,
                          isMobile: false,
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Flexible(
                        child: promotionTile(
                          title: S.current.landing_promotion_tile_title2,
                          image: Assets.images.tattoo20.path,
                          fontSize: fontSize,
                          isMobile: false,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget promotionTile({
    required String title,
    required String image,
    required double fontSize,
    required bool isMobile,
  }) {
    return InkWell(
      onTap: () => context.push(AppConstants.routeContact),
      splashColor: AppColors.black.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20),
      child: ImageRenderer(
        alt: title,
        child: Container(
          height: isMobile ? Get.height * 0.4 : Get.height * 0.6,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.5),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
