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

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
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
        title: S.current.footer_privacy_policy,
      ),
      body: bodyPrivacy(),
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

  Widget bodyPrivacy() {
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
                    '${S.current.privacy_date_effective}\n${S.current.privacy_date_updated}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_intro_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_changes_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_changes_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_usage_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_usage_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_data_collection_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_data_collection_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_data_retention_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_data_retention_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_rights_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_rights_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_cookies_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_cookies_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_security_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_security_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_third_party_links_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_third_party_links_text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.current.privacy_section_contact_title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.privacy_section_contact_text,
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
