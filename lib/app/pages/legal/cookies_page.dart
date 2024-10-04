import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
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
import 'package:url_launcher/url_launcher.dart';

class CookiesPage extends StatefulWidget {
  const CookiesPage({super.key});

  @override
  State<CookiesPage> createState() => _CookiesPageState();
}

class _CookiesPageState extends State<CookiesPage> {
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
        title: S.current.cookies_policy_title,
      ),
      body: bodyCookies(),
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

  Widget bodyCookies() {
    return FadeIn(
      duration: const Duration(milliseconds: 2000),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: constraints.maxWidth < 1150 ? 30.0 : 80.0,
                right: constraints.maxWidth < 1150 ? 30.0 : 80.0,
                top: constraints.maxWidth < 1150 ? 20.0 : 40.0,
                bottom: 10.0,
              ),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.current.cookies_date_effective}\n${S.current.cookies_date_updated}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_what_are_title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.cookies_what_are_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_how_use_title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.cookies_how_use_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_types_title,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_manage_preferences_title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () => AppUtils().showBannerCookies(context),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        S.current.cookies_banner,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_manage_preferences_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_browser_settings_title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${S.current.cookies_browser_settings_text1}:',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () => launchUrl(
                            Uri.parse(
                              S.current.cookies_browser_settings_text2,
                            ),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(AppColors.transparent),
                          ),
                          child: Text(
                            S.current.cookies_browser_settings_text2,
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.blue,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${S.current.cookies_browser_settings_text3}:',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () => launchUrl(
                            Uri.parse(
                              S.current.cookies_browser_settings_text4,
                            ),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(AppColors.transparent),
                          ),
                          child: Text(
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.blue,
                            ),
                            S.current.cookies_browser_settings_text4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${S.current.cookies_browser_settings_text5}:',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () => launchUrl(
                            Uri.parse(
                              S.current.cookies_browser_settings_text6,
                            ),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(AppColors.transparent),
                          ),
                          child: Text(
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.blue,
                            ),
                            S.current.cookies_browser_settings_text6,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${S.current.cookies_browser_settings_text7}:',
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () => launchUrl(
                            Uri.parse(
                              S.current.cookies_browser_settings_text8,
                            ),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(AppColors.transparent),
                          ),
                          child: Text(
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.blue,
                            ),
                            S.current.cookies_browser_settings_text8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.cookies_browser_links,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
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
