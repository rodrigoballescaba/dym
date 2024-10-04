library cookie_consent;

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/widgets/cookies/button.dart';
import 'package:tattoos/app/widgets/cookies/floating_modal.dart';
import 'package:url_launcher/url_launcher.dart';

enum CookieConsentLayout {
  floatingBottomSheet,
}

class CookeConsentCategory {
  CookeConsentCategory({
    required this.id,
    required this.name,
    required this.description,
  });

  final String id;
  final String name;
  final String description;
}

const defaultCookieConsentSharedPrefrencesPrefix =
    AppConstants.sharedPrefsPrefix;

Future<bool> getCookieConsent({
  required String category,
  required String sharedPrefrencesPrefix,
}) async {
  return (await _getCookieConsent(
        category: category,
        sharedPrefrencesPrefix: sharedPrefrencesPrefix,
      )) ??
      false;
}

Future<bool?> _getCookieConsent({
  required String category,
  required String sharedPrefrencesPrefix,
}) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('$sharedPrefrencesPrefix:$category');
}

Future<void> setCookieConsent({
  required String category,
  required String sharedPrefrencesPrefix,
  required bool value,
}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('$sharedPrefrencesPrefix:$category', value);
}

Future<void> removeCookieConsent({
  required String category,
  required String sharedPrefrencesPrefix,
}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('$sharedPrefrencesPrefix:$category');
}

void showCookieConsent(
  BuildContext context, {
  /// Provide an url to your app's or website's cookie policy document
  required Uri cookiePolicyUrl,

  /// Pick a layot for your dialog
  CookieConsentLayout layout = CookieConsentLayout.floatingBottomSheet,

  /// shared_prefrences is used to store the user's intent,
  /// by combining this prefix and the category id
  String sharedPrefrencesPrefix = defaultCookieConsentSharedPrefrencesPrefix,

  /// Main dialog title
  String title = 'Your privacy',

  /// Main dialog consent text to display. You can use placeholders
  /// [acceptallcookies] which inserts acceptAllLabel in bold and [cookiepolicy]
  /// which inserts cookiePolicyLabel which is clickable and opens cookiePolicyUrl
  /// in a web browser.
  String consent =
      'By clicking [acceptallcookies], you agree that we can store cookies '
          'on your device and disclose information in accordance with our [cookiepolicy].',
  String cookiePolicyLabel = 'Cookie Policy',

  /// Let user select only necessary cookies
  bool showAcceptNecessary = true,
  String acceptNecessaryLabel = 'Only necessary cookies',
  String acceptNecessaryCategoryId = AppConstants.idCookies,

  /// Let user accept all cookies
  bool showAcceptAll = true,
  String acceptAllLabel = 'Accept all cookies',

  /// Let user customize their consent choices
  bool showCustomize = true,
  bool? showCustomizeLabel = true,
  bool? showCustomizeIcon = true,
  String customizeLabel = 'Customize settings',
  String customizeHeadline = 'Customize your choices',
  IconData customizeIcon = Icons.settings,

  /// Show reject all button
  bool showRejectAll = false,
  String rejectAllLabel = 'Reject all cookies',
  String customizeSaveLabel = 'Confirm my choices',

  /// Categories the user can opt in to. Preferably provide your own
  /// list rather than using the default example, and tailor the descriptions
  /// specifically to your app or website.
  List<CookeConsentCategory>? categories,

  /// Whether the user can dismiss the sheet by clicking outside of it.
  bool dismissible = true,
}) {
  Column cookieConsentBody(
    BuildContext context,
    CookieConsentLayout layout, {
    bool showTitle = false,
    bool useCupertinoButtons = false,
    bool useVerticalButtons = false,
    Function? onPop,
  }) {
    onPop ??= () => Navigator.of(context).pop();
    final buttons = [
      if (showAcceptAll)
        Flexible(
          child: CookieConsentButton(
            useCupertino: useCupertinoButtons,
            isPrimary: false,
            onPressed: () async {
              // ignore: avoid_dynamic_calls
              onPop?.call();
              for (CookeConsentCategory category in categories ?? []) {
                await setCookieConsent(
                  category: category.id,
                  sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                  value: true,
                );
              }
            },
            label: acceptAllLabel,
          ),
        ),
      if (showAcceptNecessary)
        Flexible(
          child: CookieConsentButton(
            useCupertino: useCupertinoButtons,
            isPrimary: false,
            onPressed: () async {
              // ignore: avoid_dynamic_calls
              onPop?.call();
              await setCookieConsent(
                category: acceptNecessaryCategoryId,
                sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                value: true,
              );
            },
            label: acceptNecessaryLabel,
          ),
        ),
      if (showRejectAll)
        Flexible(
          child: CookieConsentButton(
            useCupertino: useCupertinoButtons,
            onPressed: () async {
              // ignore: avoid_dynamic_calls
              onPop?.call();
              for (CookeConsentCategory category in categories ?? []) {
                await removeCookieConsent(
                  category: category.id,
                  sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                );
              }
            },
            label: rejectAllLabel,
          ),
        ),
      if (showCustomize && (showCustomizeIcon! || showCustomizeLabel!))
        Flexible(
          child: CookieConsentButton(
            useCupertino: useCupertinoButtons,
            icon: showCustomizeIcon ? customizeIcon : null,
            onPressed: () {
              // ignore: avoid_dynamic_calls
              onPop?.call();
              showCustomizeCookieConsentDialog(
                context,
                layout: layout,
                categories: categories!,
                dismissible: dismissible,
                acceptNecessaryCategoryId: acceptNecessaryCategoryId,
                sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                acceptAllLabel: acceptAllLabel,
                showAcceptAll: showAcceptAll,
                customizeSaveLabel: customizeSaveLabel,
                customizeHeadline: customizeHeadline,
              );
            },
            label: showCustomizeLabel! ? customizeLabel : null,
          ),
        ),
    ];

    List<TextSpan> consentSpans = [];

    final patterns = [
      '[acceptallcookies]',
      '[cookiepolicy]',
    ];

    int lastMatch = 0;
    for (int i = 0; i < consent.length - 1; i++) {
      if (i < lastMatch) continue;
      for (final pattern in patterns) {
        if (consent.substring(i).startsWith(pattern)) {
          consentSpans.add(TextSpan(text: consent.substring(lastMatch, i)));
          lastMatch = i + pattern.length;
          switch (pattern) {
            case '[acceptallcookies]':
              consentSpans.add(
                TextSpan(
                  text: acceptAllLabel,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
              break;
            case '[cookiepolicy]':
              consentSpans.add(
                TextSpan(
                  text: cookiePolicyLabel,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchUrl(cookiePolicyUrl),
                ),
              );
              break;
          }
        }
      }
    }
    if (lastMatch < consent.length) {
      consentSpans.add(TextSpan(text: consent.substring(lastMatch)));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showTitle)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              // color: Colors.white,
              color: Colors.white,
              // fontStyle: FontStyle.italic,
            ),
            children: consentSpans,
          ),
        ),
        const SizedBox(height: 20.0),
        useVerticalButtons
            ? Column(
                children: buttons,
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: buttons,
              ),
      ],
    );
  }

  switch (layout) {
    case CookieConsentLayout.floatingBottomSheet:
      showCustomModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (context) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: cookieConsentBody(context, layout, showTitle: true),
        ),
        containerWidget: (_, animation, child) => FloatingModal(
          child: child,
        ),
        expand: false,
      );
      break;
  }
}

void showCustomizeCookieConsentDialog(
  BuildContext context, {
  /// Pick a layot for your dialog
  required CookieConsentLayout layout,

  /// Categories the user can opt in to. Preferably provide your own
  /// list rather than using the default example, and tailor the descriptions
  /// specifically to your app or website.
  required List<CookeConsentCategory> categories,

  /// Whether the user can dismiss the sheet by clicking outside of it.
  required bool dismissible,

  /// This one cannot be toggled
  required String acceptNecessaryCategoryId,
  required String sharedPrefrencesPrefix,
  required String acceptAllLabel,
  required bool showAcceptAll,
  required String customizeSaveLabel,
  required String customizeHeadline,
}) {
  StatefulBuilder customizeConsentBody(
    BuildContext context, {
    bool showTitle = false,
    bool useCupertinoButtons = false,
    bool useVerticalButtons = false,
  }) {
    int cnt = 0;
    return StatefulBuilder(
      builder: (context, setState) => FutureBuilder(
        future: Future.wait(
          categories.map(
            (category) async {
              return {
                category.id: await _getCookieConsent(
                  category: category.id,
                  sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                ),
              };
            },
          ),
        ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CupertinoActivityIndicator(),
              ),
            );
          }
          final state = <String, bool?>{
            for (Map<String, bool?> part in snapshot.data!) ...part,
          };
          return Material(
            color: Colors.transparent,
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(4),
                    1: FixedColumnWidth(66),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: categories
                      .map(
                        (category) => TableRow(
                          children: [
                            ExpansionTile(
                              title: Text(category.name),
                              trailing: const Icon(
                                CupertinoIcons.question_circle_fill,
                                size: 18.0,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Text(category.description),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CupertinoSwitch(
                                  value:
                                      category.id == acceptNecessaryCategoryId
                                          ? true
                                          : state[category.id] ?? false,
                                  onChanged:
                                      category.id == acceptNecessaryCategoryId
                                          ? null
                                          : (value) {
                                              setCookieConsent(
                                                category: category.id,
                                                sharedPrefrencesPrefix:
                                                    sharedPrefrencesPrefix,
                                                value: value,
                                              );
                                              setState(() => cnt++);
                                            },
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: CookieConsentButton(
                        label: customizeSaveLabel,
                        isPrimary: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    if (showAcceptAll)
                      Flexible(
                        child: CookieConsentButton(
                          label: acceptAllLabel,
                          onPressed: () async {
                            Navigator.of(context).pop();
                            for (final category in categories) {
                              await setCookieConsent(
                                category: category.id,
                                sharedPrefrencesPrefix: sharedPrefrencesPrefix,
                                value: true,
                              );
                            }
                          },
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  switch (layout) {
    case CookieConsentLayout.floatingBottomSheet:
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(customizeHeadline),
          content: customizeConsentBody(
            context,
            showTitle: false,
            useCupertinoButtons: true,
            useVerticalButtons: true,
          ),
        ),
        barrierDismissible: dismissible,
      );
      break;
  }
}
