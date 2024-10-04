import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:tattoos/app/pages/landing/widgets/budget_request_section.dart';
import 'package:tattoos/app/pages/landing/widgets/promotion_section.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/utils/app_utils.dart';
import 'package:tattoos/app/widgets/app_bar_custom.dart';
import 'package:tattoos/app/widgets/cookies/cookie_consent.dart';
import 'package:tattoos/app/widgets/cookies_button.dart';
import 'package:tattoos/app/widgets/footer.dart';
import 'package:tattoos/app/widgets/parallax_image.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/widgets/menu_burguer.dart';
import 'package:tattoos/app/widgets/whatsapp_button.dart';
import 'package:tattoos/data/model/tattoo.dart';
import 'package:tattoos/data/services/controller.dart';
import 'package:tattoos/generated/assets.gen.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:video_player/video_player.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  final Controller _controller = Get.find();
  final RxInt _indexRandomTattoo = 0.obs;
  late Tattoo _randomTattoo;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool showCookies = await getCookieConsent(
        sharedPrefrencesPrefix: AppConstants.sharedPrefsPrefix,
        category: AppConstants.idCookies,
      );
      if (!showCookies) {
        // ignore: use_build_context_synchronously
        AppUtils().showBannerCookies(context);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _initializeVideo();
    _randomTattoo = _getRandomTattoo();
    rootBundle.loadString(Assets.mapStyle.mapStyle).then((style) {
      _controller.mapStyle(style);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: GenericAppBar.genericAppBar(
        title: '',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return bodyLanding(isMobile: true);
          } else if (constraints.maxWidth < 1150) {
            return bodyLanding(isTablet: true);
          } else {
            return bodyLanding();
          }
        },
      ),
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

  Widget bodyLanding({bool isMobile = false, bool isTablet = false}) {
    double coverHeight = isMobile
        ? 0.35
        : isTablet
            ? 0.45
            : 0.85;
    double titleFontSize = isMobile
        ? 30
        : isTablet
            ? 50
            : 80;
    double subtitleFontSize = isMobile
        ? 20
        : isTablet
            ? 35
            : 50;
    double padding = isMobile
        ? 30
        : isTablet
            ? 60
            : 40;

    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            double screenHeight = constraints.maxHeight -
                (AppConstants.headerHeight + AppConstants.footerHeight);
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: screenHeight,
                ),
                child: Column(
                  children: [
                    BounceInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: _cover(
                        coverHeight: coverHeight,
                        titleFontSize: titleFontSize,
                        subtitleFontSize: subtitleFontSize,
                        padding: padding,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    BounceInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: _tattooPreview(
                        _randomTattoo,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      ),
                    ),
                    if (!isMobile && !isTablet)
                      const SizedBox(
                        height: 50,
                      ),
                    if (isTablet)
                      const SizedBox(
                        height: 30,
                      ),
                    if (isMobile)
                      const SizedBox(
                        height: 20,
                      ),
                    BounceInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: const PromotionSection(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    BounceInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: _javi(isMobile: isMobile, isTablet: isTablet),
                    ),
                    if (!isMobile && !isTablet)
                      const SizedBox(
                        height: 10,
                      ),
                    if (isMobile || isTablet)
                      const SizedBox(
                        height: 30,
                      ),
                    BounceInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: const BudgetRequestSection(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Footer(),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _cover({
    required double coverHeight,
    required double titleFontSize,
    required double subtitleFontSize,
    required double padding,
  }) {
    return Stack(
      children: [
        _videoPlayerController.value.isInitialized
            ? SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * coverHeight,
                child: Stack(
                  children: [
                    VideoPlayer(_videoPlayerController),
                    Container(
                      color: AppColors.black.withOpacity(.5),
                    ),
                  ],
                ),
              )
            : SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * coverHeight,
              ),
        Positioned(
          bottom: padding,
          left: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRenderer(
                style: TextRendererStyle.header3,
                child: Text(
                  S.current.landing_text_javi_title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: titleFontSize,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextRenderer(
                style: TextRendererStyle.header3,
                child: Text(
                  S.current.landing_text_javi_subtitle,
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _javi({required bool isMobile, required bool isTablet}) {
    return Container(
      color: AppColors.black,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextRenderer(
            style: TextRendererStyle.header3,
            child: Text(
              textAlign: TextAlign.center,
              S.current.landing_text_javi1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: Get.width * 0.8,
            child: TextRenderer(
              style: TextRendererStyle.paragraph,
              child: Text(
                S.current.landing_text_javi_description,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColors.white.withOpacity(0.8),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          if (isMobile || isTablet)
            const SizedBox(
              height: 20,
            ),
          if (!isMobile && !isTablet)
            const SizedBox(
              height: 30,
            ),
          LinkRenderer(
            href: AppConstants.seoLinkContact,
            text: AppConstants.mailJavi,
            child: ElevatedButton(
              onPressed: () => context.push(AppConstants.routeContact),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
              ),
              child: Text(
                S.current.landing_text_javi2.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ParallaxImage(
            imagePath: Assets.images.javi.path,
            height: 400,
          ),
        ],
      ),
    );
  }

  Widget _tattooPreview(
    Tattoo tattoo, {
    required bool isMobile,
    required bool isTablet,
  }) {
    double titleFontSize = isMobile
        ? 16
        : isTablet
            ? 24
            : 30;
    double subtitleFontSize = isMobile
        ? 16
        : isTablet
            ? 18
            : 20;
    double padding = isMobile
        ? 30
        : isTablet
            ? 60
            : 40;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (!isMobile)
            Hero(
              tag: tattoo.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  height: isMobile ? 200 : 400,
                  fit: BoxFit.cover,
                  tattoo.imageUrl,
                ),
              ),
            ),
          if (!isMobile)
            const SizedBox(
              width: 20,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isMobile)
                Hero(
                  tag: tattoo.name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      height: Get.height * .5,
                      width: Get.width * .8,
                      fit: BoxFit.cover,
                      tattoo.imageUrl,
                    ),
                  ),
                ),
              if (isMobile)
                const SizedBox(
                  height: 20,
                ),
              SizedBox(
                width: isMobile ? Get.width * .8 : Get.width * .3,
                child: Text(
                  tattoo.name,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: isMobile ? Get.width * .8 : Get.width * .3,
                child: Text(
                  tattoo.shortDescription,
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ),
              if (isMobile || isTablet) const SizedBox(height: 20),
              if (isMobile || isTablet)
                ElevatedButton(
                  onPressed: () => context.push(
                    AppConstants.routeTattooDetail,
                    extra: _indexRandomTattoo.value,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(isMobile || isTablet ? 10.0 : 20.0),
                    child: Text(
                      S.current.see_detail_button,
                      textAlign: isMobile ? TextAlign.center : TextAlign.start,
                      style: TextStyle(
                        fontSize: isMobile || isTablet ? 14.0 : 18.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          if (!isMobile && !isTablet) const SizedBox(width: 20),
          if (!isMobile && !isTablet)
            ElevatedButton(
              onPressed: () => context.push(
                AppConstants.routeTattooDetail,
                extra: _indexRandomTattoo.value,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  S.current.see_detail_button,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Tattoo _getRandomTattoo() {
    final random = Random();
    _indexRandomTattoo.value =
        random.nextInt(AppConstants().tattooWorks.length);
    return AppConstants().tattooWorks[_indexRandomTattoo.value];
  }

  Future<void> _initializeVideo() async {
    _videoPlayerController = VideoPlayerController.asset(
      Assets.videos.landingJavi,
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: true,
        webOptions: const VideoPlayerWebOptions(
          allowRemotePlayback: false,
        ),
      ),
    );

    await _videoPlayerController.initialize();
    await _videoPlayerController.setVolume(0);
    await _videoPlayerController.setPlaybackSpeed(0.5);
    await _videoPlayerController.setLooping(true);
    await _videoPlayerController.play().then((_) => setState(() {}));
  }
}
