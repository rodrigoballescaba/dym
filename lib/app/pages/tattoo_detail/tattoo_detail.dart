import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/utils/app_utils.dart';
import 'package:tattoos/app/widgets/app_bar_custom.dart';
import 'package:tattoos/app/widgets/cookies/cookie_consent.dart';
import 'package:tattoos/app/widgets/cookies_button.dart';
import 'package:tattoos/app/widgets/footer.dart';
import 'package:tattoos/app/widgets/menu_burguer.dart';
import 'package:tattoos/app/widgets/whatsapp_button.dart';
import 'package:tattoos/generated/l10n.dart';

class TattooDetailPage extends StatefulWidget {
  final int index;

  const TattooDetailPage({
    required this.index,
    super.key,
  });

  @override
  State<TattooDetailPage> createState() => _TattooDetailPageState();
}

class _TattooDetailPageState extends State<TattooDetailPage> {
  final RxInt _currentIndex = 0.obs;

  @override
  void initState() {
    super.initState();
    _currentIndex.value = widget.index;
  }

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: GenericAppBar.genericAppBar(
        title: '',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenHeight = constraints.maxHeight -
              (AppConstants.headerHeight + AppConstants.footerHeight);
          bool isMobile = constraints.maxWidth < 600;
          bool isTablet = constraints.maxWidth < 1150;

          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight,
            ),
            child: isMobile || isTablet
                ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: Get.width * .05),
                          child: Hero(
                            tag: AppConstants()
                                .tattooWorks[_currentIndex.value]
                                .name,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: isMobile
                                  ? Image.asset(
                                      AppConstants()
                                          .tattooWorks[_currentIndex.value]
                                          .imageUrl,
                                    )
                                  : Image.asset(
                                      AppConstants()
                                          .tattooWorks[_currentIndex.value]
                                          .imageUrl,
                                      height: Get.height * .7,
                                    ),
                            ),
                          ),
                        ),
                        BounceInUp(
                          duration: const Duration(milliseconds: 2000),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Get.width * .05,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: Get.width * .9,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 30),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: _currentIndex.value > 0
                                                  ? _goToPreviousTattoo
                                                  : null,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    color: _currentIndex.value >
                                                            0
                                                        ? AppColors.purple
                                                        : AppColors.white
                                                            .withOpacity(.3),
                                                    Icons.arrow_back_rounded,
                                                    size: 24,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(S.current.previous),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: _currentIndex.value <
                                                      AppConstants()
                                                              .tattooWorks
                                                              .length -
                                                          1
                                                  ? _goToNextTattoo
                                                  : null,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(S.current.next),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    color: _currentIndex.value <
                                                            AppConstants()
                                                                    .tattooWorks
                                                                    .length -
                                                                1
                                                        ? AppColors.purple
                                                        : AppColors.white
                                                            .withOpacity(.3),
                                                    Icons.arrow_forward_rounded,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          AppConstants()
                                              .tattooWorks[_currentIndex.value]
                                              .name,
                                          style: TextStyle(
                                            fontSize: isMobile ? 18 : 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          AppConstants()
                                              .tattooWorks[_currentIndex.value]
                                              .longDescription,
                                          style: TextStyle(
                                            fontSize: isMobile ? 16 : 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Footer(),
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * .05),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Hero(
                                tag: AppConstants()
                                    .tattooWorks[_currentIndex.value]
                                    .name,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    AppConstants()
                                        .tattooWorks[_currentIndex.value]
                                        .imageUrl,
                                    fit: BoxFit.cover,
                                    width: Get.width * 0.3,
                                    height: Get.height * 0.7,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Flexible(
                              child: BounceInUp(
                                duration: const Duration(milliseconds: 2000),
                                child: SizedBox(
                                  width: Get.width * 0.5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppConstants()
                                            .tattooWorks[_currentIndex.value]
                                            .name,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        AppConstants()
                                            .tattooWorks[_currentIndex.value]
                                            .longDescription,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            onPressed: _currentIndex.value > 0
                                                ? _goToPreviousTattoo
                                                : null,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  color: _currentIndex.value > 0
                                                      ? AppColors.purple
                                                      : AppColors.white
                                                          .withOpacity(.3),
                                                  Icons.arrow_back_rounded,
                                                  size: 24,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(S.current.previous),
                                              ],
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: _currentIndex.value <
                                                    AppConstants()
                                                            .tattooWorks
                                                            .length -
                                                        1
                                                ? _goToNextTattoo
                                                : null,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(S.current.next),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  color: _currentIndex.value <
                                                          AppConstants()
                                                                  .tattooWorks
                                                                  .length -
                                                              1
                                                      ? AppColors.purple
                                                      : AppColors.white
                                                          .withOpacity(.3),
                                                  Icons.arrow_forward_rounded,
                                                  size: 24,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Flexible(
                        child: Footer(),
                      ),
                    ],
                  ),
          );
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

  void _goToNextTattoo() {
    _currentIndex.value = _currentIndex.value + 1;
    setState(() {});
  }

  void _goToPreviousTattoo() {
    _currentIndex.value = _currentIndex.value - 1;
    setState(() {});
  }
}
