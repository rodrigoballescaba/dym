import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'whatsapp',
      shape: const CircleBorder(),
      onPressed: () async {
        await launchWhatsAppUri();
      },
      backgroundColor: AppColors.green,
      child: const Icon(
        FontAwesomeIcons.whatsapp,
        color: AppColors.white,
        size: 30,
      ),
    );
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
