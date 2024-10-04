import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/utils/app_utils.dart';
import 'package:tattoos/app/widgets/app_bar_custom.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/widgets/cookies/cookie_consent.dart';
import 'package:tattoos/app/widgets/cookies_button.dart';
import 'package:tattoos/app/widgets/footer.dart';
import 'package:tattoos/app/widgets/menu_burguer.dart';
import 'package:tattoos/app/widgets/whatsapp_button.dart';
import 'package:tattoos/generated/l10n.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final List<String> images = AppConstants().imagesGallery;
  late NavigatorState _navigatorState;

  @override
  void initState() {
    _navigatorState = Navigator.of(context, rootNavigator: true);
    images.shuffle();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool showCookies = await getCookieConsent(
        category: AppConstants.idCookies,
        sharedPrefrencesPrefix: AppConstants.sharedPrefsPrefix,
      );
      if (!showCookies) {
        // ignore: use_build_context_synchronously
        AppUtils().showBannerCookies(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: GenericAppBar.genericAppBar(
        title: S.current.gallery_title,
      ),
      body: bodyGallery(),
      drawer: MenuBurger(),
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CookiesButton(),
          WhatsappButton(),
        ],
      ),
    );
  }

  Widget bodyGallery() {
    return FadeIn(
      duration: const Duration(milliseconds: 2000),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 600;
          final bool isTablet = constraints.maxWidth < 1150;

          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  BounceInUp(
                    duration: const Duration(milliseconds: 2000),
                    child: SizedBox(
                      height: isMobile || isTablet
                          ? Get.height * 0.6
                          : Get.height * 0.8,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final double maxItemHeight = isMobile || isTablet
                              ? Get.height * 0.4
                              : Get.height * 0.7;
                          return CarouselView(
                            onTap: (index) {
                              AppUtils().showImageDialog(
                                context,
                                images[index],
                                '${AppConstants.heroGallery}$index',
                                _navigatorState,
                              );
                            },
                            itemExtent: maxItemHeight,
                            shrinkExtent: 250,
                            children: List<Widget>.generate(images.length,
                                (int index) {
                              return Hero(
                                tag: '${AppConstants.heroGallery}$index',
                                child: ImageRenderer(
                                  alt:
                                      'Image $index from gallery of Javinksan Tattoos',
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                  Footer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
