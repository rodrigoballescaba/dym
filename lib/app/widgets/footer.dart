import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final RxBool _isInstagramHover = false.obs;
  final RxBool _isPrivacyHover = false.obs;
  final RxBool _isCookiesHover = false.obs;

  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 1150;

        if (isMobile) {
          return Obx(
            () => Container(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              color: AppColors.black,
              child: Column(
                children: [
                  Divider(
                    color: AppColors.white.withOpacity(0.6),
                    thickness: 3.0,
                  ),
                  Text(
                    style: TextStyle(color: AppColors.white.withOpacity(0.6)),
                    textAlign: TextAlign.center,
                    S.current.footer_subtitle,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  MouseRegion(
                    onHover: (_) => _isInstagramHover(true),
                    onExit: (_) => _isInstagramHover(false),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => launchUrl(
                            Uri.parse(AppConstants.instagramURLProfile),
                          ),
                          tooltip: AppConstants.instagramJavi,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: _isInstagramHover.value
                                ? AppColors.blue
                                : AppColors.instagram,
                            size: 24.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () => launchUrl(
                            Uri.parse(AppConstants.instagramURLProfile),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(AppColors.transparent),
                          ),
                          child: Text(
                            AppConstants.instagramJavi.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: _isInstagramHover.value
                                  ? AppColors.blue
                                  : AppColors.instagram,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MouseRegion(
                    onHover: (_) => _isPrivacyHover(true),
                    onExit: (_) => _isPrivacyHover(false),
                    child: TextButton(
                      onPressed: () => context.push(AppConstants.routePrivacy),
                      style: ButtonStyle(
                        overlayColor:
                            WidgetStateProperty.all(AppColors.transparent),
                      ),
                      child: Text(
                        S.current.footer_privacy_policy.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isPrivacyHover.value
                              ? AppColors.blue
                              : AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onHover: (_) => _isCookiesHover(true),
                    onExit: (_) => _isCookiesHover(false),
                    child: TextButton(
                      onPressed: () => context.push(AppConstants.routeCookies),
                      child: Text(
                        S.current.footer_cookies.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isCookiesHover.value
                              ? AppColors.blue
                              : AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Obx(
            () => Container(
              padding:
                  const EdgeInsets.only(left: 100.0, right: 100.0, top: 20.0),
              color: AppColors.black,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Divider(
                      color: AppColors.white.withOpacity(0.6),
                      thickness: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            style: TextStyle(
                              color: AppColors.white.withOpacity(0.6),
                            ),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            S.current.footer_subtitle,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MouseRegion(
                                onHover: (_) => _isInstagramHover(true),
                                onExit: (_) => _isInstagramHover(false),
                                child: IconButton(
                                  onPressed: () => launchUrl(
                                    Uri.parse(
                                      AppConstants.instagramURLProfile,
                                    ),
                                  ),
                                  tooltip: AppConstants.instagramJavi,
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: _isInstagramHover.value
                                        ? AppColors.blue
                                        : AppColors.instagram,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              const Text(
                                '|',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.white,
                                ),
                              ),
                              Flexible(
                                child: MouseRegion(
                                  onHover: (_) => _isPrivacyHover(true),
                                  onExit: (_) => _isPrivacyHover(false),
                                  child: TextButton(
                                    onPressed: () =>
                                        context.push(AppConstants.routePrivacy),
                                    style: ButtonStyle(
                                      overlayColor: WidgetStateProperty.all(
                                        AppColors.transparent,
                                      ),
                                    ),
                                    child: Text(
                                      S.current.footer_privacy_policy
                                          .toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: _isPrivacyHover.value
                                            ? AppColors.blue
                                            : AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '|',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.white,
                                ),
                              ),
                              Flexible(
                                child: MouseRegion(
                                  onHover: (_) => _isCookiesHover(true),
                                  onExit: (_) => _isCookiesHover(false),
                                  child: TextButton(
                                    onPressed: () =>
                                        context.push(AppConstants.routeCookies),
                                    child: Text(
                                      S.current.footer_cookies.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: _isCookiesHover.value
                                            ? AppColors.blue
                                            : AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
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
          );
        }
      },
    );
  }
}
