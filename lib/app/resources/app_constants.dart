import 'package:flutter/material.dart';
import 'package:tattoos/data/model/tattoo.dart';
import 'package:tattoos/generated/assets.gen.dart';
import 'package:tattoos/generated/l10n.dart';

class AppConstants {
  static const Locale localeEN = Locale('en', 'GB');
  static const Locale localeDE = Locale('de', 'DE');
  static const Locale localeES = Locale('es', 'ES');

  static const String instagramURLProfile =
      'https://www.instagram.com/javink.san/';
  static const String addressJavi = 'Kleine Reichenstraße 5, 20457 Hamburg';
  static const String seoLinkContact = 'https://javinksan.com/contact';
  static const String phoneFormatedJavi = '+34 658 11 21 79';
  static const String sharedPrefsPrefix = 'cookie_consent';
  static const String mailJavi = 'javink.san@gmail.com';
  static const String titleWeb = 'Javink San Tattoos';
  static const String instagramJavi = 'javink.san';
  static const String phoneJavi = '+34658112179';
  static const String heroGallery = 'heroGallery';
  static const String idCookies = 'necessary';
  static const String fontFamily = 'MPlus';
  static const int footerHeight = 50;
  static const int headerHeight = 40;

  static const String routeTattooDetail = '/tattoo-detail';
  static const String routePrivacy = '/privacy-policy';
  static const String routeGallery = '/gallery';
  static const String routeContact = '/contact';
  static const String routeCookies = '/cookies';
  static const String routeHome = '/';

  final List<String> imagesGallery = [
    Assets.images.tattoo1.path,
    Assets.images.tattoo2.path,
    Assets.images.tattoo3.path,
    Assets.images.tattoo4.path,
    Assets.images.tattoo5.path,
    Assets.images.tattoo6.path,
    Assets.images.tattoo7.path,
    Assets.images.tattoo8.path,
    Assets.images.tattoo9.path,
    Assets.images.tattoo10.path,
    Assets.images.tattoo11.path,
    Assets.images.tattoo12.path,
    Assets.images.tattoo13.path,
    Assets.images.tattoo14.path,
    Assets.images.tattoo15.path,
    Assets.images.tattoo16.path,
    Assets.images.tattoo17.path,
    Assets.images.tattoo18.path,
    Assets.images.tattoo19.path,
    Assets.images.tattoo20.path,
    Assets.images.tattoo21.path,
  ];

  final List<Tattoo> tattooWorks = List.generate(21, (index) {
    String shortDescription = _getShortDescriptions(index);
    String longDescription = _getLongDescriptions(index);
    String imageUrl = _getImageUrls(index);
    String name = _getNames(index);

    return Tattoo(
      shortDescription: shortDescription,
      longDescription: longDescription,
      imageUrl: imageUrl,
      name: name,
    );
  });

  static String _getShortDescriptions(int index) {
    switch (index) {
      case 0:
        return S.current.tattoo1_short_description;
      case 1:
        return S.current.tattoo2_short_description;
      case 2:
        return S.current.tattoo3_short_description;
      case 3:
        return S.current.tattoo4_short_description;
      case 4:
        return S.current.tattoo5_short_description;
      case 5:
        return S.current.tattoo6_short_description;
      case 6:
        return S.current.tattoo7_short_description;
      case 7:
        return S.current.tattoo8_short_description;
      case 8:
        return S.current.tattoo9_short_description;
      case 9:
        return S.current.tattoo10_short_description;
      case 10:
        return S.current.tattoo11_short_description;
      case 11:
        return S.current.tattoo12_short_description;
      case 12:
        return S.current.tattoo13_short_description;
      case 13:
        return S.current.tattoo14_short_description;
      case 14:
        return S.current.tattoo15_short_description;
      case 15:
        return S.current.tattoo16_short_description;
      case 16:
        return S.current.tattoo17_short_description;
      case 17:
        return S.current.tattoo18_short_description;
      case 18:
        return S.current.tattoo19_short_description;
      case 19:
        return S.current.tattoo20_short_description;
      case 20:
        return S.current.tattoo21_short_description;
      default:
        return '';
    }
  }

  static String _getLongDescriptions(int index) {
    switch (index) {
      case 0:
        return S.current.tattoo1_large_description;
      case 1:
        return S.current.tattoo2_large_description;
      case 2:
        return S.current.tattoo3_large_description;
      case 3:
        return S.current.tattoo4_large_description;
      case 4:
        return S.current.tattoo5_large_description;
      case 5:
        return S.current.tattoo6_large_description;
      case 6:
        return S.current.tattoo7_large_description;
      case 7:
        return S.current.tattoo8_large_description;
      case 8:
        return S.current.tattoo9_large_description;
      case 9:
        return S.current.tattoo10_large_description;
      case 10:
        return S.current.tattoo11_large_description;
      case 11:
        return S.current.tattoo12_large_description;
      case 12:
        return S.current.tattoo13_large_description;
      case 13:
        return S.current.tattoo14_large_description;
      case 14:
        return S.current.tattoo15_large_description;
      case 15:
        return S.current.tattoo16_large_description;
      case 16:
        return S.current.tattoo17_large_description;
      case 17:
        return S.current.tattoo18_large_description;
      case 18:
        return S.current.tattoo19_large_description;
      case 19:
        return S.current.tattoo20_large_description;
      case 20:
        return S.current.tattoo21_large_description;
      default:
        return '';
    }
  }

  static String _getImageUrls(int index) {
    switch (index) {
      case 0:
        return Assets.images.tattoo1.path;
      case 1:
        return Assets.images.tattoo2.path;
      case 2:
        return Assets.images.tattoo3.path;
      case 3:
        return Assets.images.tattoo4.path;
      case 4:
        return Assets.images.tattoo5.path;
      case 5:
        return Assets.images.tattoo6.path;
      case 6:
        return Assets.images.tattoo7.path;
      case 7:
        return Assets.images.tattoo8.path;
      case 8:
        return Assets.images.tattoo9.path;
      case 9:
        return Assets.images.tattoo10.path;
      case 10:
        return Assets.images.tattoo11.path;
      case 11:
        return Assets.images.tattoo12.path;
      case 12:
        return Assets.images.tattoo13.path;
      case 13:
        return Assets.images.tattoo14.path;
      case 14:
        return Assets.images.tattoo15.path;
      case 15:
        return Assets.images.tattoo16.path;
      case 16:
        return Assets.images.tattoo17.path;
      case 17:
        return Assets.images.tattoo18.path;
      case 18:
        return Assets.images.tattoo19.path;
      case 19:
        return Assets.images.tattoo20.path;
      case 20:
        return Assets.images.tattoo21.path;
      default:
        return '';
    }
  }

  static String _getNames(int index) {
    switch (index) {
      case 0:
        return S.current.tattoo1_title;
      case 1:
        return S.current.tattoo2_title;
      case 2:
        return S.current.tattoo3_title;
      case 3:
        return S.current.tattoo4_title;
      case 4:
        return S.current.tattoo5_title;
      case 5:
        return S.current.tattoo6_title;
      case 6:
        return S.current.tattoo7_title;
      case 7:
        return S.current.tattoo8_title;
      case 8:
        return S.current.tattoo9_title;
      case 9:
        return S.current.tattoo10_title;
      case 10:
        return S.current.tattoo11_title;
      case 11:
        return S.current.tattoo12_title;
      case 12:
        return S.current.tattoo13_title;
      case 13:
        return S.current.tattoo14_title;
      case 14:
        return S.current.tattoo15_title;
      case 15:
        return S.current.tattoo16_title;
      case 16:
        return S.current.tattoo17_title;
      case 17:
        return S.current.tattoo18_title;
      case 18:
        return S.current.tattoo19_title;
      case 19:
        return S.current.tattoo20_title;
      case 20:
        return S.current.tattoo21_title;
      default:
        return '';
    }
  }
}
