import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/utils/app_utils.dart';
import 'package:tattoos/app/widgets/app_bar_custom.dart';
import 'package:tattoos/app/widgets/cookies/cookie_consent.dart';
import 'package:tattoos/app/widgets/cookies_button.dart';
import 'package:tattoos/app/widgets/footer.dart';
import 'package:tattoos/app/widgets/menu_burguer.dart';
import 'package:tattoos/app/widgets/whatsapp_button.dart';
import 'package:tattoos/data/services/controller.dart';
import 'package:tattoos/generated/assets.gen.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final Completer<GoogleMapController> _controllerMap =
      Completer<GoogleMapController>();
  final Rx<CameraPosition> _initialCameraPosition = const CameraPosition(
    target: LatLng(53.548270, 9.993090),
    zoom: 14.0,
  ).obs;
  final Controller _controller = Get.find();

  @override
  void initState() {
    super.initState();

    rootBundle.loadString(Assets.mapStyle.mapStyle).then((style) {
      _controller.mapStyle(style);
    });
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
        title: S.current.menu_contact,
      ),
      body: bodyContact(),
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

  Widget bodyContact() {
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
                  if (isMobile || isTablet)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        contactColumn(isMobile, isTablet),
                        const SizedBox(height: 20),
                        mapSection(isMobile, isTablet),
                      ],
                    )
                  else
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        contactColumn(isMobile, isTablet),
                        const SizedBox(width: 30),
                        mapSection(isMobile, isTablet),
                      ],
                    ),
                  const SizedBox(height: 20),
                  Footer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget contactColumn(bool isMobile, bool isTablet) {
    return BounceInUp(
      duration: const Duration(milliseconds: 2000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () =>
                launchUrl(Uri.parse('mailto:${AppConstants.mailJavi}')),
            splashColor: AppColors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30.0),
            child: _rowContact(
              Icons.mail_rounded,
              S.current.contact_mail,
              AppConstants.mailJavi,
              AppColors.black,
              isMobile,
              isTablet,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () => launchWhatsAppUri(),
            splashColor: AppColors.redDark.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30.0),
            child: _rowContact(
              Icons.phone_rounded,
              S.current.contact_phone,
              AppConstants.phoneFormatedJavi,
              AppColors.redDark,
              isMobile,
              isTablet,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () => context.push(AppConstants.routeContact),
            splashColor: AppColors.yellowDark.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30.0),
            child: _rowContact(
              Icons.directions_rounded,
              S.current.contact_address,
              AppConstants.addressJavi,
              AppColors.yellowDark,
              isMobile,
              isTablet,
            ),
          ),
        ],
      ),
    );
  }

  Widget mapSection(bool isMobile, bool isTablet) {
    return BounceInUp(
      duration: const Duration(milliseconds: 2000),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Obx(
            () => SizedBox(
              height: isMobile || isTablet ? 400 : Get.height * 0.8,
              width: isMobile || isTablet ? double.infinity : Get.width / 2,
              child: GoogleMap(
                initialCameraPosition: _initialCameraPosition.value,
                style: _controller.mapStyle.value,
                myLocationButtonEnabled: false,
                rotateGesturesEnabled: false,
                scrollGesturesEnabled: false,
                onMapCreated: _onMapCreated,
                zoomGesturesEnabled: false,
                zoomControlsEnabled: false,
                gestureRecognizers: {
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _rowContact(
    IconData icon,
    String title,
    String subtitle,
    Color color,
    bool isMobile,
    bool isTablet,
  ) {
    double containerWidth = isMobile
        ? Get.width / 1.2
        : isTablet
            ? Get.width / 1.3
            : Get.width / 3;
    double iconSize = isMobile ? 60 : 100;
    double titleFontSize = isMobile ? 24 : 40;
    double subtitleFontSize = isMobile ? 16 : 18;

    return Container(
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: AppColors.white.withOpacity(0.2),
        border: Border.all(
          color: color,
          width: 5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              color: color,
              size: iconSize,
              icon,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: titleFontSize,
                  ),
                  title,
                ),
                SizedBox(
                  width: isMobile ? Get.width / 2 : 200.0,
                  child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: subtitleFontSize,
                    ),
                    subtitle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    if (_controllerMap.isCompleted) {
      return;
    }
    _controllerMap.complete(controller);
  }

  Future<void> launchWhatsAppUri() async {
    final link = WhatsAppUnilink(
      text: S.current.landing_whatsapp_text,
      phoneNumber: AppConstants.phoneJavi,
    );
    if (!await launchUrl(link.asUri())) {
      throw Exception('Could not launch ${link.asUri()}');
    }
  }
}
