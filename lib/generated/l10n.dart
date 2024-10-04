// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Willkommen bei der Art\nof Anime in Your Skin!`
  String get landing_title {
    return Intl.message(
      'Willkommen bei der Art\nof Anime in Your Skin!',
      name: 'landing_title',
      desc: '',
      args: [],
    );
  }

  /// `Promotionen`
  String get landing_promotion_section_title {
    return Intl.message(
      'Promotionen',
      name: 'landing_promotion_section_title',
      desc: '',
      args: [],
    );
  }

  /// `Bis zu 100% Rabatt\nauf große Tattoos`
  String get landing_promotion_tile_title {
    return Intl.message(
      'Bis zu 100% Rabatt\nauf große Tattoos',
      name: 'landing_promotion_tile_title',
      desc: '',
      args: [],
    );
  }

  /// `1 Freund mitbringen\nund gewinnen20% Rabatt`
  String get landing_promotion_tile_title2 {
    return Intl.message(
      '1 Freund mitbringen\nund gewinnen20% Rabatt',
      name: 'landing_promotion_tile_title2',
      desc: '',
      args: [],
    );
  }

  /// `Hallo Javi! Ich bin auf der Suche nach einem besonderen Tattoo und ich denke, du könntest der richtige Künstler sein. Können wir über meine Ideen sprechen und wie du mir helfen könntest?`
  String get landing_whatsapp_text {
    return Intl.message(
      'Hallo Javi! Ich bin auf der Suche nach einem besonderen Tattoo und ich denke, du könntest der richtige Künstler sein. Können wir über meine Ideen sprechen und wie du mir helfen könntest?',
      name: 'landing_whatsapp_text',
      desc: '',
      args: [],
    );
  }

  /// `Hallo! Ich bin Javi aus Spanien. Ich spreche Spanisch und Englisch. Ich liebe es, alles zu tätowieren, was mit der Welt der Geeks zu tun hat: Anime, Videospiele, Filme, etc. Ich habe mich auf Farbarbeiten spezialisiert, hauptsächlich im neo-traditionellen Stil, obwohl auch andere Stile willkommen sind. Mein Ziel ist es, mich ständig weiterzuentwickeln und jedem Kunden die nötige Zeit zu widmen, um das Beste von mir zu bieten, von der Kundenbetreuung, der Beantwortung von Fragen und dem Design bis hin zum endgültigen Tattoo-Ergebnis.\n\nWas den Preis angeht, berechne ich nach Größe. Zum Beispiel kostet eine A4-Größe wie ein äußerer Unterarm zwischen 800 € und 1.100 €, und eine A5-Größe kostet zwischen 500 € und 750 €. Jede Beratung ist völlig kostenlos. Danke, dass du mich für dein nächstes Tattoo in Betracht ziehst; gemeinsam werden wir ein tolles Projekt schaffen!`
  String get landing_text_javi_description {
    return Intl.message(
      'Hallo! Ich bin Javi aus Spanien. Ich spreche Spanisch und Englisch. Ich liebe es, alles zu tätowieren, was mit der Welt der Geeks zu tun hat: Anime, Videospiele, Filme, etc. Ich habe mich auf Farbarbeiten spezialisiert, hauptsächlich im neo-traditionellen Stil, obwohl auch andere Stile willkommen sind. Mein Ziel ist es, mich ständig weiterzuentwickeln und jedem Kunden die nötige Zeit zu widmen, um das Beste von mir zu bieten, von der Kundenbetreuung, der Beantwortung von Fragen und dem Design bis hin zum endgültigen Tattoo-Ergebnis.\n\nWas den Preis angeht, berechne ich nach Größe. Zum Beispiel kostet eine A4-Größe wie ein äußerer Unterarm zwischen 800 € und 1.100 €, und eine A5-Größe kostet zwischen 500 € und 750 €. Jede Beratung ist völlig kostenlos. Danke, dass du mich für dein nächstes Tattoo in Betracht ziehst; gemeinsam werden wir ein tolles Projekt schaffen!',
      name: 'landing_text_javi_description',
      desc: '',
      args: [],
    );
  }

  /// `Javi Serrano`
  String get landing_text_javi_title {
    return Intl.message(
      'Javi Serrano',
      name: 'landing_text_javi_title',
      desc: '',
      args: [],
    );
  }

  /// `Neo-Traditionell, Farbarbeit`
  String get landing_text_javi_subtitle {
    return Intl.message(
      'Neo-Traditionell, Farbarbeit',
      name: 'landing_text_javi_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `¡Hola! Ich bin Javi aus Spanien.`
  String get landing_text_javi1 {
    return Intl.message(
      '¡Hola! Ich bin Javi aus Spanien.',
      name: 'landing_text_javi1',
      desc: '',
      args: [],
    );
  }

  /// `Vereinbaren Sie einen Termin`
  String get landing_text_javi2 {
    return Intl.message(
      'Vereinbaren Sie einen Termin',
      name: 'landing_text_javi2',
      desc: '',
      args: [],
    );
  }

  /// `Startseite`
  String get menu_home {
    return Intl.message(
      'Startseite',
      name: 'menu_home',
      desc: '',
      args: [],
    );
  }

  /// `Anmeldung`
  String get menu_login {
    return Intl.message(
      'Anmeldung',
      name: 'menu_login',
      desc: '',
      args: [],
    );
  }

  /// `Galerie`
  String get menu_gallery {
    return Intl.message(
      'Galerie',
      name: 'menu_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Roulette`
  String get menu_roulette {
    return Intl.message(
      'Roulette',
      name: 'menu_roulette',
      desc: '',
      args: [],
    );
  }

  /// `Meine Punkte`
  String get menu_points {
    return Intl.message(
      'Meine Punkte',
      name: 'menu_points',
      desc: '',
      args: [],
    );
  }

  /// `Kontakt`
  String get menu_contact {
    return Intl.message(
      'Kontakt',
      name: 'menu_contact',
      desc: '',
      args: [],
    );
  }

  /// `Meine neuesten Arbeiten`
  String get gallery_title {
    return Intl.message(
      'Meine neuesten Arbeiten',
      name: 'gallery_title',
      desc: '',
      args: [],
    );
  }

  /// `Um die gesamte Galerie zu sehen, loggen Sie sich bitte ein.`
  String get gallery_title_without_auth {
    return Intl.message(
      'Um die gesamte Galerie zu sehen, loggen Sie sich bitte ein.',
      name: 'gallery_title_without_auth',
      desc: '',
      args: [],
    );
  }

  /// `Anmeldung`
  String get login_title {
    return Intl.message(
      'Anmeldung',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Drehen Sie das Roulette!`
  String get roulette_title {
    return Intl.message(
      'Drehen Sie das Roulette!',
      name: 'roulette_title',
      desc: '',
      args: [],
    );
  }

  /// `Meine Punkte`
  String get points_title {
    return Intl.message(
      'Meine Punkte',
      name: 'points_title',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get contact_mail {
    return Intl.message(
      'E-Mail',
      name: 'contact_mail',
      desc: '',
      args: [],
    );
  }

  /// `Telefon`
  String get contact_phone {
    return Intl.message(
      'Telefon',
      name: 'contact_phone',
      desc: '',
      args: [],
    );
  }

  /// `Adresse`
  String get contact_address {
    return Intl.message(
      'Adresse',
      name: 'contact_address',
      desc: '',
      args: [],
    );
  }

  /// `Datenschutzbestimmungen`
  String get footer_privacy_policy {
    return Intl.message(
      'Datenschutzbestimmungen',
      name: 'footer_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Cookies-Politik`
  String get footer_cookies {
    return Intl.message(
      'Cookies-Politik',
      name: 'footer_cookies',
      desc: '',
      args: [],
    );
  }

  /// `©2024 JaviSank Tattoo Studio. Alle Rechte vorbehalten.`
  String get footer_subtitle {
    return Intl.message(
      '©2024 JaviSank Tattoo Studio. Alle Rechte vorbehalten.',
      name: 'footer_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Gültigkeitsdatum: 02-Sep-2023`
  String get privacy_date_effective {
    return Intl.message(
      'Gültigkeitsdatum: 02-Sep-2023',
      name: 'privacy_date_effective',
      desc: '',
      args: [],
    );
  }

  /// `Zuletzt aktualisiert: 02-Sep-2023`
  String get privacy_date_updated {
    return Intl.message(
      'Zuletzt aktualisiert: 02-Sep-2023',
      name: 'privacy_date_updated',
      desc: '',
      args: [],
    );
  }

  /// `Diese Datenschutzerklärung beschreibt die Richtlinien von Develop Your Mind, Utiel, Valencia, 46300, Spanien, E-Mail: developpyourmind@gmail.com, bezüglich der Erhebung, Nutzung und Offenlegung der Informationen, die wir sammeln, wenn Sie unsere Website (https://developyourmind.app) (der "Dienst") nutzen. Durch den Zugriff auf oder die Nutzung des Dienstes stimmen Sie der Erhebung, Nutzung und Offenlegung Ihrer Informationen gemäß dieser Datenschutzerklärung zu. Wenn Sie nicht einverstanden sind, greifen Sie bitte nicht auf den Dienst zu oder nutzen Sie ihn nicht.`
  String get privacy_intro_text {
    return Intl.message(
      'Diese Datenschutzerklärung beschreibt die Richtlinien von Develop Your Mind, Utiel, Valencia, 46300, Spanien, E-Mail: developpyourmind@gmail.com, bezüglich der Erhebung, Nutzung und Offenlegung der Informationen, die wir sammeln, wenn Sie unsere Website (https://developyourmind.app) (der "Dienst") nutzen. Durch den Zugriff auf oder die Nutzung des Dienstes stimmen Sie der Erhebung, Nutzung und Offenlegung Ihrer Informationen gemäß dieser Datenschutzerklärung zu. Wenn Sie nicht einverstanden sind, greifen Sie bitte nicht auf den Dienst zu oder nutzen Sie ihn nicht.',
      name: 'privacy_intro_text',
      desc: '',
      args: [],
    );
  }

  /// `Änderungen der Datenschutzerklärung`
  String get privacy_section_changes_title {
    return Intl.message(
      'Änderungen der Datenschutzerklärung',
      name: 'privacy_section_changes_title',
      desc: '',
      args: [],
    );
  }

  /// `Wir können diese Datenschutzerklärung jederzeit ohne vorherige Ankündigung ändern und werden die geänderte Datenschutzerklärung im Dienst veröffentlichen. Die geänderte Richtlinie tritt 180 Tage nach ihrer Veröffentlichung im Dienst in Kraft, und Ihr fortgesetzter Zugriff auf oder Ihre Nutzung des Dienstes nach Ablauf dieses Zeitraums stellt Ihre Zustimmung zur geänderten Datenschutzerklärung dar. Daher empfehlen wir Ihnen, diese Seite regelmäßig zu überprüfen.`
  String get privacy_section_changes_text {
    return Intl.message(
      'Wir können diese Datenschutzerklärung jederzeit ohne vorherige Ankündigung ändern und werden die geänderte Datenschutzerklärung im Dienst veröffentlichen. Die geänderte Richtlinie tritt 180 Tage nach ihrer Veröffentlichung im Dienst in Kraft, und Ihr fortgesetzter Zugriff auf oder Ihre Nutzung des Dienstes nach Ablauf dieses Zeitraums stellt Ihre Zustimmung zur geänderten Datenschutzerklärung dar. Daher empfehlen wir Ihnen, diese Seite regelmäßig zu überprüfen.',
      name: 'privacy_section_changes_text',
      desc: '',
      args: [],
    );
  }

  /// `Wie wir Ihre Informationen nutzen`
  String get privacy_section_usage_title {
    return Intl.message(
      'Wie wir Ihre Informationen nutzen',
      name: 'privacy_section_usage_title',
      desc: '',
      args: [],
    );
  }

  /// `Wir werden die Informationen, die wir über Sie sammeln, zu folgenden Zwecken verwenden:\n\n- Hilfe\n\nWenn wir Ihre Daten für andere Zwecke verwenden möchten, werden wir um Ihre Zustimmung bitten und Ihre Informationen nur verwenden, wenn wir Ihre Zustimmung erhalten, und dann nur für den Zweck oder die Zwecke, für die Sie Ihre Zustimmung gegeben haben, es sei denn, wir sind gesetzlich verpflichtet, etwas anderes zu tun.`
  String get privacy_section_usage_text {
    return Intl.message(
      'Wir werden die Informationen, die wir über Sie sammeln, zu folgenden Zwecken verwenden:\n\n- Hilfe\n\nWenn wir Ihre Daten für andere Zwecke verwenden möchten, werden wir um Ihre Zustimmung bitten und Ihre Informationen nur verwenden, wenn wir Ihre Zustimmung erhalten, und dann nur für den Zweck oder die Zwecke, für die Sie Ihre Zustimmung gegeben haben, es sei denn, wir sind gesetzlich verpflichtet, etwas anderes zu tun.',
      name: 'privacy_section_usage_text',
      desc: '',
      args: [],
    );
  }

  /// `Datenerhebung und -nutzung`
  String get privacy_section_data_collection_title {
    return Intl.message(
      'Datenerhebung und -nutzung',
      name: 'privacy_section_data_collection_title',
      desc: '',
      args: [],
    );
  }

  /// `Wir erheben verschiedene Arten von Informationen zu unterschiedlichen Zwecken, wie z.B. zur Verbesserung unseres Dienstes und zur Personalisierung Ihrer Erfahrung. Die Arten von Daten, die wir erheben können, umfassen unter anderem:\n\n- Persönliche Daten (Name, E-Mail-Adresse, Telefonnummer)\n- Nutzungsdaten (Informationen darüber, wie Sie auf unseren Dienst zugreifen und ihn nutzen)\n\nDiese Informationen werden auf verschiedene Weise gesammelt, einschließlich über Formulare auf unserer Website, E-Mails, Interaktionen in sozialen Medien usw.`
  String get privacy_section_data_collection_text {
    return Intl.message(
      'Wir erheben verschiedene Arten von Informationen zu unterschiedlichen Zwecken, wie z.B. zur Verbesserung unseres Dienstes und zur Personalisierung Ihrer Erfahrung. Die Arten von Daten, die wir erheben können, umfassen unter anderem:\n\n- Persönliche Daten (Name, E-Mail-Adresse, Telefonnummer)\n- Nutzungsdaten (Informationen darüber, wie Sie auf unseren Dienst zugreifen und ihn nutzen)\n\nDiese Informationen werden auf verschiedene Weise gesammelt, einschließlich über Formulare auf unserer Website, E-Mails, Interaktionen in sozialen Medien usw.',
      name: 'privacy_section_data_collection_text',
      desc: '',
      args: [],
    );
  }

  /// `Datenaufbewahrung`
  String get privacy_section_data_retention_title {
    return Intl.message(
      'Datenaufbewahrung',
      name: 'privacy_section_data_retention_title',
      desc: '',
      args: [],
    );
  }

  /// `Wir werden Ihre personenbezogenen Daten nur so lange aufbewahren, wie es erforderlich ist, um die in dieser Datenschutzerklärung dargelegten Zwecke zu erfüllen. Wir werden Ihre Daten nur so lange aufbewahren und verwenden, wie es notwendig ist, um unsere rechtlichen Verpflichtungen zu erfüllen (zum Beispiel, wenn wir verpflichtet sind, Ihre Daten zur Einhaltung der geltenden Gesetze aufzubewahren), Streitigkeiten beizulegen und unsere Vereinbarungen und rechtlichen Richtlinien durchzusetzen.`
  String get privacy_section_data_retention_text {
    return Intl.message(
      'Wir werden Ihre personenbezogenen Daten nur so lange aufbewahren, wie es erforderlich ist, um die in dieser Datenschutzerklärung dargelegten Zwecke zu erfüllen. Wir werden Ihre Daten nur so lange aufbewahren und verwenden, wie es notwendig ist, um unsere rechtlichen Verpflichtungen zu erfüllen (zum Beispiel, wenn wir verpflichtet sind, Ihre Daten zur Einhaltung der geltenden Gesetze aufzubewahren), Streitigkeiten beizulegen und unsere Vereinbarungen und rechtlichen Richtlinien durchzusetzen.',
      name: 'privacy_section_data_retention_text',
      desc: '',
      args: [],
    );
  }

  /// `Ihre Rechte`
  String get privacy_section_rights_title {
    return Intl.message(
      'Ihre Rechte',
      name: 'privacy_section_rights_title',
      desc: '',
      args: [],
    );
  }

  /// `Je nach geltendem Recht haben Sie möglicherweise das Recht auf Zugang, Berichtigung oder Löschung Ihrer personenbezogenen Daten, eine Kopie Ihrer Daten zu erhalten, die aktive Verarbeitung Ihrer Daten einzuschränken, uns zu bitten, Ihre personenbezogenen Daten an eine andere Stelle zu übertragen (zu portieren), jede Zustimmung, die Sie zur Verarbeitung Ihrer Daten gegeben haben, zu widerrufen, das Recht, bei einer Aufsichtsbehörde eine Beschwerde einzureichen, und andere Rechte, die Ihnen nach geltendem Recht zustehen können. Um diese Rechte auszuüben, können Sie uns unter developpyourmind@gmail.com schreiben. Wir werden Ihre Anfrage gemäß den geltenden Gesetzen beantworten.\n\nBitte beachten Sie, dass Sie möglicherweise nicht auf die angeforderten Dienste zugreifen oder diese nutzen können, wenn Sie uns nicht gestatten, die erforderlichen personenbezogenen Daten zu erheben oder zu verarbeiten oder Ihre Zustimmung zur Verarbeitung für die erforderlichen Zwecke widerrufen.`
  String get privacy_section_rights_text {
    return Intl.message(
      'Je nach geltendem Recht haben Sie möglicherweise das Recht auf Zugang, Berichtigung oder Löschung Ihrer personenbezogenen Daten, eine Kopie Ihrer Daten zu erhalten, die aktive Verarbeitung Ihrer Daten einzuschränken, uns zu bitten, Ihre personenbezogenen Daten an eine andere Stelle zu übertragen (zu portieren), jede Zustimmung, die Sie zur Verarbeitung Ihrer Daten gegeben haben, zu widerrufen, das Recht, bei einer Aufsichtsbehörde eine Beschwerde einzureichen, und andere Rechte, die Ihnen nach geltendem Recht zustehen können. Um diese Rechte auszuüben, können Sie uns unter developpyourmind@gmail.com schreiben. Wir werden Ihre Anfrage gemäß den geltenden Gesetzen beantworten.\n\nBitte beachten Sie, dass Sie möglicherweise nicht auf die angeforderten Dienste zugreifen oder diese nutzen können, wenn Sie uns nicht gestatten, die erforderlichen personenbezogenen Daten zu erheben oder zu verarbeiten oder Ihre Zustimmung zur Verarbeitung für die erforderlichen Zwecke widerrufen.',
      name: 'privacy_section_rights_text',
      desc: '',
      args: [],
    );
  }

  /// `Cookies und ähnliche Technologien`
  String get privacy_section_cookies_title {
    return Intl.message(
      'Cookies und ähnliche Technologien',
      name: 'privacy_section_cookies_title',
      desc: '',
      args: [],
    );
  }

  /// `Um mehr darüber zu erfahren, wie wir Cookies und andere Nachverfolgungstechnologien verwenden, lesen Sie bitte unsere Cookie-Richtlinie.`
  String get privacy_section_cookies_text {
    return Intl.message(
      'Um mehr darüber zu erfahren, wie wir Cookies und andere Nachverfolgungstechnologien verwenden, lesen Sie bitte unsere Cookie-Richtlinie.',
      name: 'privacy_section_cookies_text',
      desc: '',
      args: [],
    );
  }

  /// `Sicherheit`
  String get privacy_section_security_title {
    return Intl.message(
      'Sicherheit',
      name: 'privacy_section_security_title',
      desc: '',
      args: [],
    );
  }

  /// `Die Sicherheit Ihrer Informationen ist uns wichtig und wir werden angemessene Sicherheitsmaßnahmen ergreifen, um den Verlust, Missbrauch oder die unbefugte Veränderung der Informationen unter unserer Kontrolle zu verhindern. Aufgrund der inhärenten Risiken können wir jedoch keine absolute Sicherheit gewährleisten und können daher nicht garantieren, dass die von Ihnen übermittelten Informationen sicher sind; Sie tun dies auf eigenes Risiko.`
  String get privacy_section_security_text {
    return Intl.message(
      'Die Sicherheit Ihrer Informationen ist uns wichtig und wir werden angemessene Sicherheitsmaßnahmen ergreifen, um den Verlust, Missbrauch oder die unbefugte Veränderung der Informationen unter unserer Kontrolle zu verhindern. Aufgrund der inhärenten Risiken können wir jedoch keine absolute Sicherheit gewährleisten und können daher nicht garantieren, dass die von Ihnen übermittelten Informationen sicher sind; Sie tun dies auf eigenes Risiko.',
      name: 'privacy_section_security_text',
      desc: '',
      args: [],
    );
  }

  /// `Links von Dritten und Nutzung Ihrer Informationen`
  String get privacy_section_third_party_links_title {
    return Intl.message(
      'Links von Dritten und Nutzung Ihrer Informationen',
      name: 'privacy_section_third_party_links_title',
      desc: '',
      args: [],
    );
  }

  /// `Unser Dienst kann Links zu anderen Websites enthalten, die nicht von uns betrieben werden. Diese Datenschutzerklärung befasst sich nicht mit den Datenschutzrichtlinien und anderen Praktiken von Drittparteien, einschließlich solcher, die Websites oder Dienste betreiben, die über einen Link in unserem Dienst erreichbar sind. Wir empfehlen Ihnen dringend, die Datenschutzerklärung jeder Website zu überprüfen, die Sie besuchen. Wir haben keine Kontrolle über und übernehmen keine Verantwortung für den Inhalt, die Datenschutzrichtlinien oder die Praktiken von Websites oder Diensten Dritter.`
  String get privacy_section_third_party_links_text {
    return Intl.message(
      'Unser Dienst kann Links zu anderen Websites enthalten, die nicht von uns betrieben werden. Diese Datenschutzerklärung befasst sich nicht mit den Datenschutzrichtlinien und anderen Praktiken von Drittparteien, einschließlich solcher, die Websites oder Dienste betreiben, die über einen Link in unserem Dienst erreichbar sind. Wir empfehlen Ihnen dringend, die Datenschutzerklärung jeder Website zu überprüfen, die Sie besuchen. Wir haben keine Kontrolle über und übernehmen keine Verantwortung für den Inhalt, die Datenschutzrichtlinien oder die Praktiken von Websites oder Diensten Dritter.',
      name: 'privacy_section_third_party_links_text',
      desc: '',
      args: [],
    );
  }

  /// `Beschwerde- und Datenschutzbeauftragter`
  String get privacy_section_contact_title {
    return Intl.message(
      'Beschwerde- und Datenschutzbeauftragter',
      name: 'privacy_section_contact_title',
      desc: '',
      args: [],
    );
  }

  /// `Wenn Sie Fragen oder Bedenken hinsichtlich der Handhabung der Informationen haben, die Sie bei uns haben, können Sie eine E-Mail an unseren Beschwerdebeauftragten unter Develop Your Mind, E-Mail: developpyourmind@gmail.com senden. Wir werden Ihre Anliegen gemäß den geltenden Gesetzen bearbeiten.`
  String get privacy_section_contact_text {
    return Intl.message(
      'Wenn Sie Fragen oder Bedenken hinsichtlich der Handhabung der Informationen haben, die Sie bei uns haben, können Sie eine E-Mail an unseren Beschwerdebeauftragten unter Develop Your Mind, E-Mail: developpyourmind@gmail.com senden. Wir werden Ihre Anliegen gemäß den geltenden Gesetzen bearbeiten.',
      name: 'privacy_section_contact_text',
      desc: '',
      args: [],
    );
  }

  /// `Cookie-Einstellungen`
  String get cookies_banner {
    return Intl.message(
      'Cookie-Einstellungen',
      name: 'cookies_banner',
      desc: '',
      args: [],
    );
  }

  /// `Cookie-Richtlinie`
  String get cookies_page_title {
    return Intl.message(
      'Cookie-Richtlinie',
      name: 'cookies_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Cookie-Richtlinie`
  String get cookies_policy_title {
    return Intl.message(
      'Cookie-Richtlinie',
      name: 'cookies_policy_title',
      desc: '',
      args: [],
    );
  }

  /// `Gültigkeitsdatum: 02-Sep-2023`
  String get cookies_date_effective {
    return Intl.message(
      'Gültigkeitsdatum: 02-Sep-2023',
      name: 'cookies_date_effective',
      desc: '',
      args: [],
    );
  }

  /// `Letzte Aktualisierung: 02-Sep-2023`
  String get cookies_date_updated {
    return Intl.message(
      'Letzte Aktualisierung: 02-Sep-2023',
      name: 'cookies_date_updated',
      desc: '',
      args: [],
    );
  }

  /// `Was sind Cookies?`
  String get cookies_what_are_title {
    return Intl.message(
      'Was sind Cookies?',
      name: 'cookies_what_are_title',
      desc: '',
      args: [],
    );
  }

  /// `Diese Cookie-Richtlinie erklärt, was Cookies sind und wie wir sie verwenden, die Arten von Cookies, die wir verwenden, d.h., die Informationen, die wir durch Cookies sammeln und wie diese Informationen verwendet werden, und wie man die Cookie-Einstellungen verwaltet.\n\nCookies sind kleine Textdateien, die verwendet werden, um kleine Informationsstücke zu speichern. Sie werden auf Ihrem Gerät gespeichert, wenn die Website in Ihrem Browser geladen wird. Diese Cookies helfen uns, dass die Website ordnungsgemäß funktioniert, sicherer ist, eine bessere Benutzererfahrung bietet und zu verstehen, wie die Website funktioniert und zu analysieren, was funktioniert und was verbessert werden muss.`
  String get cookies_what_are_text {
    return Intl.message(
      'Diese Cookie-Richtlinie erklärt, was Cookies sind und wie wir sie verwenden, die Arten von Cookies, die wir verwenden, d.h., die Informationen, die wir durch Cookies sammeln und wie diese Informationen verwendet werden, und wie man die Cookie-Einstellungen verwaltet.\n\nCookies sind kleine Textdateien, die verwendet werden, um kleine Informationsstücke zu speichern. Sie werden auf Ihrem Gerät gespeichert, wenn die Website in Ihrem Browser geladen wird. Diese Cookies helfen uns, dass die Website ordnungsgemäß funktioniert, sicherer ist, eine bessere Benutzererfahrung bietet und zu verstehen, wie die Website funktioniert und zu analysieren, was funktioniert und was verbessert werden muss.',
      name: 'cookies_what_are_text',
      desc: '',
      args: [],
    );
  }

  /// `Wie Wir Cookies Verwenden`
  String get cookies_how_use_title {
    return Intl.message(
      'Wie Wir Cookies Verwenden',
      name: 'cookies_how_use_title',
      desc: '',
      args: [],
    );
  }

  /// `Wie die meisten Online-Dienste verwendet unsere Website sowohl First-Party- als auch Third-Party-Cookies zu verschiedenen Zwecken. First-Party-Cookies sind hauptsächlich notwendig, damit die Website ordnungsgemäß funktioniert und sammeln keine personenbezogenen Daten.\n\nThird-Party-Cookies, die auf unserer Website verwendet werden, dienen hauptsächlich dazu, zu verstehen, wie die Website funktioniert, wie Sie mit unserer Website interagieren, die Sicherheit unserer Dienste aufrechtzuerhalten, relevante Werbung für Sie bereitzustellen und im Allgemeinen eine verbesserte Benutzererfahrung zu bieten und Ihre zukünftigen Interaktionen mit unserer Website zu vereinfachen.`
  String get cookies_how_use_text {
    return Intl.message(
      'Wie die meisten Online-Dienste verwendet unsere Website sowohl First-Party- als auch Third-Party-Cookies zu verschiedenen Zwecken. First-Party-Cookies sind hauptsächlich notwendig, damit die Website ordnungsgemäß funktioniert und sammeln keine personenbezogenen Daten.\n\nThird-Party-Cookies, die auf unserer Website verwendet werden, dienen hauptsächlich dazu, zu verstehen, wie die Website funktioniert, wie Sie mit unserer Website interagieren, die Sicherheit unserer Dienste aufrechtzuerhalten, relevante Werbung für Sie bereitzustellen und im Allgemeinen eine verbesserte Benutzererfahrung zu bieten und Ihre zukünftigen Interaktionen mit unserer Website zu vereinfachen.',
      name: 'cookies_how_use_text',
      desc: '',
      args: [],
    );
  }

  /// `Arten von Cookies, die Wir Verwenden`
  String get cookies_types_title {
    return Intl.message(
      'Arten von Cookies, die Wir Verwenden',
      name: 'cookies_types_title',
      desc: '',
      args: [],
    );
  }

  /// `Verwalten der Cookie-Präferenzen`
  String get cookies_manage_preferences_title {
    return Intl.message(
      'Verwalten der Cookie-Präferenzen',
      name: 'cookies_manage_preferences_title',
      desc: '',
      args: [],
    );
  }

  /// `Sie können Ihre Cookie-Präferenzen jederzeit ändern, indem Sie auf die Schaltfläche oben klicken. Dies ermöglicht Ihnen, das Cookie-Zustimmungsbanner erneut aufzurufen und Ihre Präferenzen zu ändern oder Ihre Zustimmung sofort zurückzuziehen.\n\nDarüber hinaus bieten verschiedene Browser unterschiedliche Methoden zum Blockieren und Löschen von Cookies, die von Websites verwendet werden. Sie können die Einstellungen Ihres Browsers ändern, um Cookies zu blockieren oder zu löschen. Im Folgenden finden Sie Links zu Unterstützungsdokumenten, wie Sie Cookies für die wichtigsten Webbrowser verwalten und löschen können.`
  String get cookies_manage_preferences_text {
    return Intl.message(
      'Sie können Ihre Cookie-Präferenzen jederzeit ändern, indem Sie auf die Schaltfläche oben klicken. Dies ermöglicht Ihnen, das Cookie-Zustimmungsbanner erneut aufzurufen und Ihre Präferenzen zu ändern oder Ihre Zustimmung sofort zurückzuziehen.\n\nDarüber hinaus bieten verschiedene Browser unterschiedliche Methoden zum Blockieren und Löschen von Cookies, die von Websites verwendet werden. Sie können die Einstellungen Ihres Browsers ändern, um Cookies zu blockieren oder zu löschen. Im Folgenden finden Sie Links zu Unterstützungsdokumenten, wie Sie Cookies für die wichtigsten Webbrowser verwalten und löschen können.',
      name: 'cookies_manage_preferences_text',
      desc: '',
      args: [],
    );
  }

  /// `Cookie-Einstellungen`
  String get cookies_browser_settings_title {
    return Intl.message(
      'Cookie-Einstellungen',
      name: 'cookies_browser_settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Chrome`
  String get cookies_browser_settings_text1 {
    return Intl.message(
      'Chrome',
      name: 'cookies_browser_settings_text1',
      desc: '',
      args: [],
    );
  }

  /// `https://support.google.com/accounts/answer/32050`
  String get cookies_browser_settings_text2 {
    return Intl.message(
      'https://support.google.com/accounts/answer/32050',
      name: 'cookies_browser_settings_text2',
      desc: '',
      args: [],
    );
  }

  /// `Safari`
  String get cookies_browser_settings_text3 {
    return Intl.message(
      'Safari',
      name: 'cookies_browser_settings_text3',
      desc: '',
      args: [],
    );
  }

  /// `https://support.apple.com/en-in/guide/safari/sfri11471/mac`
  String get cookies_browser_settings_text4 {
    return Intl.message(
      'https://support.apple.com/en-in/guide/safari/sfri11471/mac',
      name: 'cookies_browser_settings_text4',
      desc: '',
      args: [],
    );
  }

  /// `Firefox`
  String get cookies_browser_settings_text5 {
    return Intl.message(
      'Firefox',
      name: 'cookies_browser_settings_text5',
      desc: '',
      args: [],
    );
  }

  /// `https://support.mozilla.org/en-US/kb/clear-cookies-and-site-data-firefox?redirectslug=delete-cookies-remove-info-websites-stored&redirectlocale=en-US`
  String get cookies_browser_settings_text6 {
    return Intl.message(
      'https://support.mozilla.org/en-US/kb/clear-cookies-and-site-data-firefox?redirectslug=delete-cookies-remove-info-websites-stored&redirectlocale=en-US',
      name: 'cookies_browser_settings_text6',
      desc: '',
      args: [],
    );
  }

  /// `Internet Explorer`
  String get cookies_browser_settings_text7 {
    return Intl.message(
      'Internet Explorer',
      name: 'cookies_browser_settings_text7',
      desc: '',
      args: [],
    );
  }

  /// `https://support.microsoft.com/en-us/topic/how-to-delete-cookie-files-in-internet-explorer-bca9446f-d873-78de-77ba-d42645fa52fc`
  String get cookies_browser_settings_text8 {
    return Intl.message(
      'https://support.microsoft.com/en-us/topic/how-to-delete-cookie-files-in-internet-explorer-bca9446f-d873-78de-77ba-d42645fa52fc',
      name: 'cookies_browser_settings_text8',
      desc: '',
      args: [],
    );
  }

  /// `Wenn Sie einen anderen Browser verwenden, konsultieren Sie bitte die offizielle Dokumentation Ihres Browsers.`
  String get cookies_browser_links {
    return Intl.message(
      'Wenn Sie einen anderen Browser verwenden, konsultieren Sie bitte die offizielle Dokumentation Ihres Browsers.',
      name: 'cookies_browser_links',
      desc: '',
      args: [],
    );
  }

  /// `Einwilligungspräferenzen anpassen`
  String get cookies_title {
    return Intl.message(
      'Einwilligungspräferenzen anpassen',
      name: 'cookies_title',
      desc: '',
      args: [],
    );
  }

  /// `Durch Klicken auf Alle Akzeptieren stimmen Sie zu, dass wir Cookies auf Ihrem Gerät speichern und Informationen gemäß unserer Cookie-Richtlinie offenlegen dürfen.`
  String get cookies_subtitle {
    return Intl.message(
      'Durch Klicken auf Alle Akzeptieren stimmen Sie zu, dass wir Cookies auf Ihrem Gerät speichern und Informationen gemäß unserer Cookie-Richtlinie offenlegen dürfen.',
      name: 'cookies_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Alle Akzeptieren`
  String get cookies_button_accept {
    return Intl.message(
      'Alle Akzeptieren',
      name: 'cookies_button_accept',
      desc: '',
      args: [],
    );
  }

  /// `Alle Ablehnen`
  String get cookies_button_decline {
    return Intl.message(
      'Alle Ablehnen',
      name: 'cookies_button_decline',
      desc: '',
      args: [],
    );
  }

  /// `Erforderliche Cookies sind notwendig, um die Grundfunktionen dieser Seite zu ermöglichen, wie z. B. einen sicheren Login bereitzustellen oder Ihre Einwilligungspräferenzen anzupassen. Diese Cookies speichern keine`
  String get cookies_description {
    return Intl.message(
      'Erforderliche Cookies sind notwendig, um die Grundfunktionen dieser Seite zu ermöglichen, wie z. B. einen sicheren Login bereitzustellen oder Ihre Einwilligungspräferenzen anzupassen. Diese Cookies speichern keine',
      name: 'cookies_description',
      desc: '',
      args: [],
    );
  }

  /// `Angebot anfordern`
  String get budget_request_title {
    return Intl.message(
      'Angebot anfordern',
      name: 'budget_request_title',
      desc: '',
      args: [],
    );
  }

  /// `Bitte füllen Sie das untenstehende Formular aus, um ein Angebot für Ihr Tattoo anzufordern.`
  String get budget_request_description {
    return Intl.message(
      'Bitte füllen Sie das untenstehende Formular aus, um ein Angebot für Ihr Tattoo anzufordern.',
      name: 'budget_request_description',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Ihre Angebotsanfrage`
  String get request {
    return Intl.message(
      'Ihre Angebotsanfrage',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Anfrage senden`
  String get send_request {
    return Intl.message(
      'Anfrage senden',
      name: 'send_request',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Feld ist erforderlich`
  String get required_field {
    return Intl.message(
      'Dieses Feld ist erforderlich',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Anfrage gesendet`
  String get request_sent {
    return Intl.message(
      'Anfrage gesendet',
      name: 'request_sent',
      desc: '',
      args: [],
    );
  }

  /// `Danke, dass Sie uns kontaktiert haben. Wir melden uns bald bei Ihnen.`
  String get thank_you_for_contacting_us {
    return Intl.message(
      'Danke, dass Sie uns kontaktiert haben. Wir melden uns bald bei Ihnen.',
      name: 'thank_you_for_contacting_us',
      desc: '',
      args: [],
    );
  }

  /// `Vollständige Geschichte Ansehen`
  String get see_detail_button {
    return Intl.message(
      'Vollständige Geschichte Ansehen',
      name: 'see_detail_button',
      desc: '',
      args: [],
    );
  }

  /// `Vorherige`
  String get previous {
    return Intl.message(
      'Vorherige',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Nächste`
  String get next {
    return Intl.message(
      'Nächste',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Lisa in der Psychedelischen Dimension`
  String get tattoo1_title {
    return Intl.message(
      'Lisa in der Psychedelischen Dimension',
      name: 'tattoo1_title',
      desc: '',
      args: [],
    );
  }

  /// `Ein lebhaftes Tattoo von Lisa Simpson im psychedelischen Stil. Die Details umfassen rosafarbene Brillen und eine Friedensgeste in einer surrealen Umgebung, umgeben von schmelzenden Herzen, die Liebe, Freiheit und Rebellion symbolisieren.`
  String get tattoo1_short_description {
    return Intl.message(
      'Ein lebhaftes Tattoo von Lisa Simpson im psychedelischen Stil. Die Details umfassen rosafarbene Brillen und eine Friedensgeste in einer surrealen Umgebung, umgeben von schmelzenden Herzen, die Liebe, Freiheit und Rebellion symbolisieren.',
      name: 'tattoo1_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einer alternativen und fantastischen Realität verwandelt sich Lisa Simpson in eine Ikone der psychedelischen Popkultur. Das Tattoo fängt ihren ruhigen Gesichtsausdruck mit rosafarbenen Sonnenbrillen, einem Friedenszeichen in der Hand und einer Aura der Gelassenheit ein, die im Kontrast zu den schmelzenden Herzen steht, die sie umgeben. Diese Lisa ist nicht das intellektuelle Kind, das jeder kennt; hier steht sie für inneren Frieden und Freiheit des Denkens in einem surrealen Universum.\n\nDieses Tattoo symbolisiert die Kraft der Vorstellungskraft in einer chaotischen Welt, in der die schmelzenden Herzen die Verschmelzung intensiver Emotionen mit einer verzerrten Realität darstellen. Der rot-orange Hintergrund vermischt sich mit rosafarbenen Tönen und schafft eine Atmosphäre, die sowohl fröhlich als auch rebellisch ist. Das Detail in den Brillen spiegelt eine veränderte Sichtweise wider, als könnte man durch sie die Welt authentischer sehen.\n\nEntworfen für einen Kunden, der seine Liebe zur Gedankenfreiheit und ungefilterten Emotionen ausdrücken wollte, ist dieses Tattoo ein Spiegelbild des freien Geistes, der etablierte Normen herausfordert und nach Gleichgewicht im Unvorhersehbaren sucht. Die klaren Linien und lebhaften Farben sprechen von innerem Frieden, der nur in der Rebellion gefunden werden kann, und zeigen, dass selbst im Chaos Schönheit und Gelassenheit existieren können.`
  String get tattoo1_large_description {
    return Intl.message(
      'In einer alternativen und fantastischen Realität verwandelt sich Lisa Simpson in eine Ikone der psychedelischen Popkultur. Das Tattoo fängt ihren ruhigen Gesichtsausdruck mit rosafarbenen Sonnenbrillen, einem Friedenszeichen in der Hand und einer Aura der Gelassenheit ein, die im Kontrast zu den schmelzenden Herzen steht, die sie umgeben. Diese Lisa ist nicht das intellektuelle Kind, das jeder kennt; hier steht sie für inneren Frieden und Freiheit des Denkens in einem surrealen Universum.\n\nDieses Tattoo symbolisiert die Kraft der Vorstellungskraft in einer chaotischen Welt, in der die schmelzenden Herzen die Verschmelzung intensiver Emotionen mit einer verzerrten Realität darstellen. Der rot-orange Hintergrund vermischt sich mit rosafarbenen Tönen und schafft eine Atmosphäre, die sowohl fröhlich als auch rebellisch ist. Das Detail in den Brillen spiegelt eine veränderte Sichtweise wider, als könnte man durch sie die Welt authentischer sehen.\n\nEntworfen für einen Kunden, der seine Liebe zur Gedankenfreiheit und ungefilterten Emotionen ausdrücken wollte, ist dieses Tattoo ein Spiegelbild des freien Geistes, der etablierte Normen herausfordert und nach Gleichgewicht im Unvorhersehbaren sucht. Die klaren Linien und lebhaften Farben sprechen von innerem Frieden, der nur in der Rebellion gefunden werden kann, und zeigen, dass selbst im Chaos Schönheit und Gelassenheit existieren können.',
      name: 'tattoo1_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Wächter von Vergangenheit und Zukunft`
  String get tattoo2_title {
    return Intl.message(
      'Der Wächter von Vergangenheit und Zukunft',
      name: 'tattoo2_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt die Dualität zwischen einem ernsthaften Mann und einem animierten Dinosaurier. Es repräsentiert den Konflikt zwischen der Realität des Erwachsenenlebens und den Kindheitserinnerungen, wobei es ein Gleichgewicht zwischen Nostalgie und Verantwortung schafft. Perfekt für diejenigen, die ihr inneres Kind bewahren, ohne ihre Gegenwart zu vergessen.`
  String get tattoo2_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt die Dualität zwischen einem ernsthaften Mann und einem animierten Dinosaurier. Es repräsentiert den Konflikt zwischen der Realität des Erwachsenenlebens und den Kindheitserinnerungen, wobei es ein Gleichgewicht zwischen Nostalgie und Verantwortung schafft. Perfekt für diejenigen, die ihr inneres Kind bewahren, ohne ihre Gegenwart zu vergessen.',
      name: 'tattoo2_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einem Reich, in dem die Zeit ein stetiger Fluss ist, existierte eine Kreatur, die zwischen den Strömen von Vergangenheit und Zukunft reisen konnte: der Wächter der Zeit. Es war eine komplexe Gestalt, die in einem Moment ein Mann mit einem Gesicht, verhärtet durch Erfahrung, und im nächsten ein lebendiger und farbenfroher Dinosaurier sein konnte. Die Dualität dieser Kreatur repräsentierte die Spannungen zwischen dem Ernst des Erwachsenenlebens und der Freude der Kindheit, zwei Welten, die oft gegensätzlich erscheinen, sich aber in Wirklichkeit ergänzen.\n\nZeitreisende wandten sich an den Wächter, wenn sie sich in ihrem eigenen Leben verloren fühlten. Einige suchten nach Antworten auf die Zukunft; andere nach Zuflucht in den Erinnerungen der Vergangenheit. Aber nur diejenigen, die verstanden, dass das wahre Geheimnis darin lag, beide Aspekte – die Pflicht eines Erwachsenen und die Unschuld eines Kindes – zu akzeptieren, konnten die Führung erhalten, die sie suchten.\n\nDieses Tattoo ist eine Hommage an diese Legende und zeigt sowohl das Gesicht eines Mannes, belastet durch die Geschichte, als auch das eines Dinosauriers, der das Lachen und die Träume der Kindheit heraufbeschwört. Der Kontrast zwischen dem düsteren Realismus des Porträts und der lebendigen Cartoon-Darstellung des Dinosauriers schafft eine visuelle Spannung, die das Gleichgewicht zwischen Verantwortung und Spaß widerspiegelt. Das Design richtet sich an diejenigen, die wie der Wächter die Lektionen ihrer Vergangenheit akzeptieren, ohne sich davon abhalten zu lassen, ihre Zukunft zu gestalten.`
  String get tattoo2_large_description {
    return Intl.message(
      'In einem Reich, in dem die Zeit ein stetiger Fluss ist, existierte eine Kreatur, die zwischen den Strömen von Vergangenheit und Zukunft reisen konnte: der Wächter der Zeit. Es war eine komplexe Gestalt, die in einem Moment ein Mann mit einem Gesicht, verhärtet durch Erfahrung, und im nächsten ein lebendiger und farbenfroher Dinosaurier sein konnte. Die Dualität dieser Kreatur repräsentierte die Spannungen zwischen dem Ernst des Erwachsenenlebens und der Freude der Kindheit, zwei Welten, die oft gegensätzlich erscheinen, sich aber in Wirklichkeit ergänzen.\n\nZeitreisende wandten sich an den Wächter, wenn sie sich in ihrem eigenen Leben verloren fühlten. Einige suchten nach Antworten auf die Zukunft; andere nach Zuflucht in den Erinnerungen der Vergangenheit. Aber nur diejenigen, die verstanden, dass das wahre Geheimnis darin lag, beide Aspekte – die Pflicht eines Erwachsenen und die Unschuld eines Kindes – zu akzeptieren, konnten die Führung erhalten, die sie suchten.\n\nDieses Tattoo ist eine Hommage an diese Legende und zeigt sowohl das Gesicht eines Mannes, belastet durch die Geschichte, als auch das eines Dinosauriers, der das Lachen und die Träume der Kindheit heraufbeschwört. Der Kontrast zwischen dem düsteren Realismus des Porträts und der lebendigen Cartoon-Darstellung des Dinosauriers schafft eine visuelle Spannung, die das Gleichgewicht zwischen Verantwortung und Spaß widerspiegelt. Das Design richtet sich an diejenigen, die wie der Wächter die Lektionen ihrer Vergangenheit akzeptieren, ohne sich davon abhalten zu lassen, ihre Zukunft zu gestalten.',
      name: 'tattoo2_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Frieden im Chaos`
  String get tattoo3_title {
    return Intl.message(
      'Frieden im Chaos',
      name: 'tattoo3_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt eine alternative Version einer ikonischen Figur, jedoch mit einer entspannten und friedlichen Note. Die runden Brillen und das Friedenszeichen mit den Fingern deuten auf eine sorglose Stimmung hin, während die leuchtenden Farben und fließenden Formen einen Kontrast zwischen innerer Ruhe und äußerem Chaos hervorheben. Perfekt für diejenigen, die Gelassenheit inmitten von Unordnung umarmen.`
  String get tattoo3_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt eine alternative Version einer ikonischen Figur, jedoch mit einer entspannten und friedlichen Note. Die runden Brillen und das Friedenszeichen mit den Fingern deuten auf eine sorglose Stimmung hin, während die leuchtenden Farben und fließenden Formen einen Kontrast zwischen innerer Ruhe und äußerem Chaos hervorheben. Perfekt für diejenigen, die Gelassenheit inmitten von Unordnung umarmen.',
      name: 'tattoo3_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einer Welt voller Lärm und Verwirrung kann wahrer Frieden an den unerwartetsten Orten gefunden werden. Dieses Bild einer allseits bekannten Figur wurde neu interpretiert, um eine neue Lebensphilosophie widerzuspiegeln. Mit runden, leicht zerzausten Brillen zeigt die Figur einen tiefen Ausdruck von Ruhe, fast so, als blicke sie über das unmittelbare Geschehen hinaus, hin zu einem inneren Horizont, wo nichts ihre Gelassenheit stören kann.\n\nDas mit den Fingern geformte Friedenszeichen ist ein universelles Symbol, wird hier jedoch zu einer Art Schutzschild gegen das Chaos des modernen Lebens. Die intensiven und lebhaften Farben, die sie umgeben, scheinen ihre Ruhe verschlingen zu wollen, doch sie bleibt unbewegt, geschützt durch ihre eigene Sicht auf die Realität. Es ist, als hätte die Figur einen höheren Bewusstseinszustand erreicht, in dem alles fließt und nichts stehen bleibt, ohne dass es sie jedoch beeinflusst.\n\nDieses Tattoo wurde für jemanden geschaffen, der gelernt hat, das Gleichgewicht inmitten von Stürmen zu finden, jemand, der das Chaos nicht als Feind sieht, sondern als Teil der Reise. Die Details in den Linien und Schatten erzählen eine Geschichte der Transformation, von jemandem, der den Stress hinter sich gelassen und ein friedlicheres und nachdenklicheres Leben angenommen hat. Die Verschmelzung klassischer Stilelemente mit diesem neuen Ansatz zeigt, dass wir, egal woher wir kommen, immer Frieden finden können, wenn wir ihn an den richtigen Orten suchen.`
  String get tattoo3_large_description {
    return Intl.message(
      'In einer Welt voller Lärm und Verwirrung kann wahrer Frieden an den unerwartetsten Orten gefunden werden. Dieses Bild einer allseits bekannten Figur wurde neu interpretiert, um eine neue Lebensphilosophie widerzuspiegeln. Mit runden, leicht zerzausten Brillen zeigt die Figur einen tiefen Ausdruck von Ruhe, fast so, als blicke sie über das unmittelbare Geschehen hinaus, hin zu einem inneren Horizont, wo nichts ihre Gelassenheit stören kann.\n\nDas mit den Fingern geformte Friedenszeichen ist ein universelles Symbol, wird hier jedoch zu einer Art Schutzschild gegen das Chaos des modernen Lebens. Die intensiven und lebhaften Farben, die sie umgeben, scheinen ihre Ruhe verschlingen zu wollen, doch sie bleibt unbewegt, geschützt durch ihre eigene Sicht auf die Realität. Es ist, als hätte die Figur einen höheren Bewusstseinszustand erreicht, in dem alles fließt und nichts stehen bleibt, ohne dass es sie jedoch beeinflusst.\n\nDieses Tattoo wurde für jemanden geschaffen, der gelernt hat, das Gleichgewicht inmitten von Stürmen zu finden, jemand, der das Chaos nicht als Feind sieht, sondern als Teil der Reise. Die Details in den Linien und Schatten erzählen eine Geschichte der Transformation, von jemandem, der den Stress hinter sich gelassen und ein friedlicheres und nachdenklicheres Leben angenommen hat. Die Verschmelzung klassischer Stilelemente mit diesem neuen Ansatz zeigt, dass wir, egal woher wir kommen, immer Frieden finden können, wenn wir ihn an den richtigen Orten suchen.',
      name: 'tattoo3_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Wächter der Verlorenen Welten`
  String get tattoo4_title {
    return Intl.message(
      'Der Wächter der Verlorenen Welten',
      name: 'tattoo4_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo repräsentiert Serakthar, einen Drachenwächter verlorener Welten, der beauftragt ist, ein Portal zu vergessenen Dimensionen zu bewachen. Mit offenen Kiefern und einem Ausdruck von Macht symbolisiert er den Schutz von Geheimnissen und innere Stärke und ruft persönliche Kämpfe und den Mut vieler hervor, die ihre eigenen Narben tragen.`
  String get tattoo4_short_description {
    return Intl.message(
      'Dieses Tattoo repräsentiert Serakthar, einen Drachenwächter verlorener Welten, der beauftragt ist, ein Portal zu vergessenen Dimensionen zu bewachen. Mit offenen Kiefern und einem Ausdruck von Macht symbolisiert er den Schutz von Geheimnissen und innere Stärke und ruft persönliche Kämpfe und den Mut vieler hervor, die ihre eigenen Narben tragen.',
      name: 'tattoo4_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einem alten Reich, lange bevor Menschen die Erde betraten und die Meere von Schiffen befahren wurden, existierten Drachenwächter, unsterbliche Kreaturen, die über die Geheimnisse verlorener Welten wachten. Jeder dieser Drachen hatte eine heilige Mission: die Portale zu beschützen, die unbekannte Dimensionen verbanden, Welten, in denen Magie und Mythen real waren. Diese Portale waren tief in den Bergen verborgen, und nur die Mutigsten konnten sich ihnen nähern.\n\nDieses Tattoo, inspiriert von einem dieser legendären Wächter, erzählt die Geschichte von Serakthar, dem letzten seiner Art. Jahrtausende lang bewachte Serakthar ein Portal, das zu einem Reich führte, in dem die Zeit nicht existierte, einem Ort voller immaterieller Reichtümer und unerreichbarem Wissen für Sterbliche. Die mächtigsten Könige und Zauberer versuchten, ihn zu bezwingen, aber keiner konnte seiner Wildheit und uralten Weisheit das Wasser reichen.\n\nDas Bild des Drachen, mit seinen offenen Kiefern und durchdringenden Blicken, symbolisiert sowohl seine zerstörerische Kraft als auch seine tiefe Verbindung zum Gleichgewicht zwischen den Welten. Der Tätowierer, der dieses Bild in die Haut sticht, evoziert den ewigen Kampf, das Heilige und Verborgene zu schützen, etwas, womit sich viele Kunden, die ein Tattoo-Studio betreten, identifizieren können. Wie Serakthar, der sein Schicksal als Wächter wählte, suchen viele im Tätowierkunst eine Möglichkeit, ihre persönlichen Kämpfe zu ehren und ihre intimsten Geheimnisse zu schützen.\n\nDie Geschichte dieses Drachens ist nicht nur eine fantastische Erzählung, sondern ein Spiegelbild des Lebens selbst, in dem jede Narbe, jede Markierung eine Erinnerung an ausgetragene Kämpfe und an Portale ist, die nicht jeder durchqueren kann. Diejenigen, die dieses Bild tragen, tragen nicht nur die Figur eines Drachen, sondern auch das Gewicht unzähliger Geschichten, der verlorenen Welten, die sie in sich tragen.`
  String get tattoo4_large_description {
    return Intl.message(
      'In einem alten Reich, lange bevor Menschen die Erde betraten und die Meere von Schiffen befahren wurden, existierten Drachenwächter, unsterbliche Kreaturen, die über die Geheimnisse verlorener Welten wachten. Jeder dieser Drachen hatte eine heilige Mission: die Portale zu beschützen, die unbekannte Dimensionen verbanden, Welten, in denen Magie und Mythen real waren. Diese Portale waren tief in den Bergen verborgen, und nur die Mutigsten konnten sich ihnen nähern.\n\nDieses Tattoo, inspiriert von einem dieser legendären Wächter, erzählt die Geschichte von Serakthar, dem letzten seiner Art. Jahrtausende lang bewachte Serakthar ein Portal, das zu einem Reich führte, in dem die Zeit nicht existierte, einem Ort voller immaterieller Reichtümer und unerreichbarem Wissen für Sterbliche. Die mächtigsten Könige und Zauberer versuchten, ihn zu bezwingen, aber keiner konnte seiner Wildheit und uralten Weisheit das Wasser reichen.\n\nDas Bild des Drachen, mit seinen offenen Kiefern und durchdringenden Blicken, symbolisiert sowohl seine zerstörerische Kraft als auch seine tiefe Verbindung zum Gleichgewicht zwischen den Welten. Der Tätowierer, der dieses Bild in die Haut sticht, evoziert den ewigen Kampf, das Heilige und Verborgene zu schützen, etwas, womit sich viele Kunden, die ein Tattoo-Studio betreten, identifizieren können. Wie Serakthar, der sein Schicksal als Wächter wählte, suchen viele im Tätowierkunst eine Möglichkeit, ihre persönlichen Kämpfe zu ehren und ihre intimsten Geheimnisse zu schützen.\n\nDie Geschichte dieses Drachens ist nicht nur eine fantastische Erzählung, sondern ein Spiegelbild des Lebens selbst, in dem jede Narbe, jede Markierung eine Erinnerung an ausgetragene Kämpfe und an Portale ist, die nicht jeder durchqueren kann. Diejenigen, die dieses Bild tragen, tragen nicht nur die Figur eines Drachen, sondern auch das Gewicht unzähliger Geschichten, der verlorenen Welten, die sie in sich tragen.',
      name: 'tattoo4_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Schattenfuchs`
  String get tattoo5_title {
    return Intl.message(
      'Der Schattenfuchs',
      name: 'tattoo5_title',
      desc: '',
      args: [],
    );
  }

  /// `Der Schattenfuchs ist eine legendäre Kreatur, die die Schatten kontrolliert und für List und Widerstandsfähigkeit steht. Dieses Tattoo, mit seinen scharfen Reißzähnen und umhüllenden Schatten, symbolisiert die Dualität zwischen Wildheit und Schutz und reflektiert den Kampf zwischen dem Sichtbaren und dem Verborgenen in der Seele des Trägers.`
  String get tattoo5_short_description {
    return Intl.message(
      'Der Schattenfuchs ist eine legendäre Kreatur, die die Schatten kontrolliert und für List und Widerstandsfähigkeit steht. Dieses Tattoo, mit seinen scharfen Reißzähnen und umhüllenden Schatten, symbolisiert die Dualität zwischen Wildheit und Schutz und reflektiert den Kampf zwischen dem Sichtbaren und dem Verborgenen in der Seele des Trägers.',
      name: 'tattoo5_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den alten Wäldern, wo der Himmel immer von dichten Wolken bedeckt ist und die Bäume vergessene Geheimnisse flüstern, lebt eine Kreatur, die viele für eine Legende halten: der Schattenfuchs. Dieses Wesen, bekannt für seine übernatürliche Agilität und List, kann die Schatten nach Belieben manipulieren und sich zwischen der Realität und der Geisterwelt bewegen. Man sagt, dass nur diejenigen mit den mutigsten Seelen oder den dunkelsten Herzen seinen Weg kreuzen und unversehrt davonkommen können.\n\nLaut der Geschichte wurde der Schattenfuchs aus der Wut eines verbannten alten Gottes geboren, der seine Essenz in die Tiefen eines verfluchten Waldes schüttete. Mit Augen, die hell wie Vollmonde strahlen, und Zähnen, scharf wie Klingen, nährt sich dieses Wesen von den tiefsten Ängsten und Geheimnissen jener, die zu weit in sein Territorium vordringen. Doch der Fuchs ist nicht rein böse. In der Tradition der Waldweisen wird er auch als Beschützer gesehen: ein Wesen, das, wenn es respektiert wird, Geschenke von Heimlichkeit, Schnelligkeit und List verleihen kann.\n\nDieses Tattoo spiegelt die duale Natur des Schattenfuchses wider. Die ausgestreckten Krallen und scharfen Reißzähne fangen seine Wildheit ein, während der Fluss der Schatten um ihn herum eine Verbindung zum Verborgenen und Unberührbaren andeutet. Für diejenigen, die sich mit dem Fuchs identifizieren, stellt dieses Tattoo den Kampf zwischen dem dar, was der Welt gezeigt wird, und dem, was in den Schatten der Seele verborgen bleibt. In der Tätowierkunst ist der Schattenfuchs eine Metapher für Widerstandsfähigkeit und Einfallsreichtum, wesentliche Qualitäten sowohl für Künstler als auch für diejenigen, die ihre Geschichten auf ihrer Haut verewigen möchten.\n\nDer Kunde, der dieses Design wählt, sieht wahrscheinlich einen Teil von sich selbst im Fuchs, ein Spiegelbild seiner eigenen Reise im Leben, in der er gelernt hat, sich zwischen den Schatten zu bewegen, sich vor Gefahren zu schützen und die Momente der Dunkelheit zu nutzen, um stärker hervorzugehen. Für den Tätowierer ist dieses Tattoo ein Werk, das sowohl Technik als auch Erzählkunst herausfordert und eine tiefe Verbindung zwischen Künstler, Kunde und den Geschichten bietet, die der Fuchs weiterhin aus seinem Schattenreich erzählt.`
  String get tattoo5_large_description {
    return Intl.message(
      'In den alten Wäldern, wo der Himmel immer von dichten Wolken bedeckt ist und die Bäume vergessene Geheimnisse flüstern, lebt eine Kreatur, die viele für eine Legende halten: der Schattenfuchs. Dieses Wesen, bekannt für seine übernatürliche Agilität und List, kann die Schatten nach Belieben manipulieren und sich zwischen der Realität und der Geisterwelt bewegen. Man sagt, dass nur diejenigen mit den mutigsten Seelen oder den dunkelsten Herzen seinen Weg kreuzen und unversehrt davonkommen können.\n\nLaut der Geschichte wurde der Schattenfuchs aus der Wut eines verbannten alten Gottes geboren, der seine Essenz in die Tiefen eines verfluchten Waldes schüttete. Mit Augen, die hell wie Vollmonde strahlen, und Zähnen, scharf wie Klingen, nährt sich dieses Wesen von den tiefsten Ängsten und Geheimnissen jener, die zu weit in sein Territorium vordringen. Doch der Fuchs ist nicht rein böse. In der Tradition der Waldweisen wird er auch als Beschützer gesehen: ein Wesen, das, wenn es respektiert wird, Geschenke von Heimlichkeit, Schnelligkeit und List verleihen kann.\n\nDieses Tattoo spiegelt die duale Natur des Schattenfuchses wider. Die ausgestreckten Krallen und scharfen Reißzähne fangen seine Wildheit ein, während der Fluss der Schatten um ihn herum eine Verbindung zum Verborgenen und Unberührbaren andeutet. Für diejenigen, die sich mit dem Fuchs identifizieren, stellt dieses Tattoo den Kampf zwischen dem dar, was der Welt gezeigt wird, und dem, was in den Schatten der Seele verborgen bleibt. In der Tätowierkunst ist der Schattenfuchs eine Metapher für Widerstandsfähigkeit und Einfallsreichtum, wesentliche Qualitäten sowohl für Künstler als auch für diejenigen, die ihre Geschichten auf ihrer Haut verewigen möchten.\n\nDer Kunde, der dieses Design wählt, sieht wahrscheinlich einen Teil von sich selbst im Fuchs, ein Spiegelbild seiner eigenen Reise im Leben, in der er gelernt hat, sich zwischen den Schatten zu bewegen, sich vor Gefahren zu schützen und die Momente der Dunkelheit zu nutzen, um stärker hervorzugehen. Für den Tätowierer ist dieses Tattoo ein Werk, das sowohl Technik als auch Erzählkunst herausfordert und eine tiefe Verbindung zwischen Künstler, Kunde und den Geschichten bietet, die der Fuchs weiterhin aus seinem Schattenreich erzählt.',
      name: 'tattoo5_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Das U-Boot der psychedelischen Träume`
  String get tattoo6_title {
    return Intl.message(
      'Das U-Boot der psychedelischen Träume',
      name: 'tattoo6_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo stellt ein U-Boot dar, das durch einen Ozean von Träumen und psychedelischen Farben fährt. Es symbolisiert die Freiheit der Vorstellungskraft und die innere Reise, die Träumer unternehmen, um ihr eigenes Bewusstsein zu erkunden. Mit seinen lebendigen Tönen und abstrakten Linien erinnert es daran, dass das Leben eine endlose Reise voller unendlicher Möglichkeiten ist.`
  String get tattoo6_short_description {
    return Intl.message(
      'Dieses Tattoo stellt ein U-Boot dar, das durch einen Ozean von Träumen und psychedelischen Farben fährt. Es symbolisiert die Freiheit der Vorstellungskraft und die innere Reise, die Träumer unternehmen, um ihr eigenes Bewusstsein zu erkunden. Mit seinen lebendigen Tönen und abstrakten Linien erinnert es daran, dass das Leben eine endlose Reise voller unendlicher Möglichkeiten ist.',
      name: 'tattoo6_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einem weiten Ozean, wo Realität und Träume miteinander verschmelzen, durchquert ein mysteriöses U-Boot die Meere, bekannt nur aus Legenden, die von jenen erzählt werden, die mutig genug sind, über die Grenzen der Vorstellungskraft hinaus zu reisen. Dieses U-Boot fährt nicht durch gewöhnliche Gewässer, sondern durch Strömungen leuchtender Farben, in denen Zeit keine Bedeutung hat und jede Welle eine einzigartige Melodie mit sich trägt. Es heißt, dass diejenigen, die sich in sein Inneres wagen, Ecken ihres Geistes erkunden können, die sie nie für möglich gehalten hätten, und ihre Seelen mit einem Universum voller unendlicher Möglichkeiten verbinden.\n\nDas „U-Boot der psychedelischen Träume“ hat keinen Kapitän, sondern wird von den Schwingungen des Universums geleitet, tanzt zwischen den Sternen und Ozeanen, als wäre es im Einklang mit dem Herzschlag des Lebens selbst. Jede Farbe, die seinen Rumpf schmückt, symbolisiert einen anderen emotionalen Zustand oder spirituellen Weg. Warme Töne stehen für Freude und Leidenschaft, während Blau- und Violetttöne Ruhe, Weisheit und das Rätsel des Unbekannten suggerieren.\n\nDieses Tattoo fängt das Gefühl grenzenloser Freiheit ein, über das Greifbare hinaus zu reisen und in eine beispiellose sensorische Erfahrung einzutauchen. Es ist ein Symbol für diejenigen, die keine Angst haben, sich in ihren eigenen Gedanken zu verlieren und die Schönheit im Abstrakten finden. Die Kunden, die dieses Design wählen, sind Träumer in ihrer Essenz, Menschen, die in Kreativität und Kunst einen Weg finden, der Routine zu entkommen, ein U-Boot, das sie in die Tiefen ihres eigenen Bewusstseins führt.\n\nDer Tätowierer wird bei der Arbeit an diesem Kunstwerk zu einer Art spiritueller Pilot, der das Schiff durch präzise Linien und explosive Farben führt, die Emotionen hervorrufen, so weitläufig wie der Ozean, den es darstellt. Jeder Strich ist eine Erinnerung daran, dass die Kunst des Tätowierens nicht nur eine Markierung auf der Haut ist, sondern eine offene Tür zu einer endlosen persönlichen Reise, bei der der Kunde zum Entdecker seiner eigenen inneren Welt wird.`
  String get tattoo6_large_description {
    return Intl.message(
      'In einem weiten Ozean, wo Realität und Träume miteinander verschmelzen, durchquert ein mysteriöses U-Boot die Meere, bekannt nur aus Legenden, die von jenen erzählt werden, die mutig genug sind, über die Grenzen der Vorstellungskraft hinaus zu reisen. Dieses U-Boot fährt nicht durch gewöhnliche Gewässer, sondern durch Strömungen leuchtender Farben, in denen Zeit keine Bedeutung hat und jede Welle eine einzigartige Melodie mit sich trägt. Es heißt, dass diejenigen, die sich in sein Inneres wagen, Ecken ihres Geistes erkunden können, die sie nie für möglich gehalten hätten, und ihre Seelen mit einem Universum voller unendlicher Möglichkeiten verbinden.\n\nDas „U-Boot der psychedelischen Träume“ hat keinen Kapitän, sondern wird von den Schwingungen des Universums geleitet, tanzt zwischen den Sternen und Ozeanen, als wäre es im Einklang mit dem Herzschlag des Lebens selbst. Jede Farbe, die seinen Rumpf schmückt, symbolisiert einen anderen emotionalen Zustand oder spirituellen Weg. Warme Töne stehen für Freude und Leidenschaft, während Blau- und Violetttöne Ruhe, Weisheit und das Rätsel des Unbekannten suggerieren.\n\nDieses Tattoo fängt das Gefühl grenzenloser Freiheit ein, über das Greifbare hinaus zu reisen und in eine beispiellose sensorische Erfahrung einzutauchen. Es ist ein Symbol für diejenigen, die keine Angst haben, sich in ihren eigenen Gedanken zu verlieren und die Schönheit im Abstrakten finden. Die Kunden, die dieses Design wählen, sind Träumer in ihrer Essenz, Menschen, die in Kreativität und Kunst einen Weg finden, der Routine zu entkommen, ein U-Boot, das sie in die Tiefen ihres eigenen Bewusstseins führt.\n\nDer Tätowierer wird bei der Arbeit an diesem Kunstwerk zu einer Art spiritueller Pilot, der das Schiff durch präzise Linien und explosive Farben führt, die Emotionen hervorrufen, so weitläufig wie der Ozean, den es darstellt. Jeder Strich ist eine Erinnerung daran, dass die Kunst des Tätowierens nicht nur eine Markierung auf der Haut ist, sondern eine offene Tür zu einer endlosen persönlichen Reise, bei der der Kunde zum Entdecker seiner eigenen inneren Welt wird.',
      name: 'tattoo6_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Legende des Schwertkämpfers mit drei Seelen`
  String get tattoo7_title {
    return Intl.message(
      'Die Legende des Schwertkämpfers mit drei Seelen',
      name: 'tattoo7_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo ehrt den Schwertkämpfer mit drei Seelen, einen mythischen Krieger, der innere Stärke und Durchhaltevermögen symbolisiert. Mit Details wie seinem grünen Haar und der Narbe auf seinem Auge steht er für die Narben des Lebens, die uns nicht schwächen, sondern stärken.`
  String get tattoo7_short_description {
    return Intl.message(
      'Dieses Tattoo ehrt den Schwertkämpfer mit drei Seelen, einen mythischen Krieger, der innere Stärke und Durchhaltevermögen symbolisiert. Mit Details wie seinem grünen Haar und der Narbe auf seinem Auge steht er für die Narben des Lebens, die uns nicht schwächen, sondern stärken.',
      name: 'tattoo7_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In fernen Ländern, jenseits der Berge, wo die Sonne in einem smaragdgrünen Glanz untergeht, lebte ein legendärer Krieger, bekannt als der Schwertkämpfer mit drei Seelen. Dieser gefürchtete Held, mit Haaren so grün wie die Blätter der ewigen Wälder, war berühmt nicht nur für seine Schwertkunst, sondern auch für die Verbindung, die er zu seinen drei heiligen Schwertern hatte. Man sagte, jedes Schwert enthalte die Seele eines alten Drachen, was ihm die Stärke einer Armee und die Weisheit vergangener Zeitalter verlieh.\n\nEine der großen Legenden erzählt, wie der Schwertkämpfer in einer entscheidenden Schlacht sein linkes Auge im Kampf gegen ein Meeresungeheuer verlor. Obwohl sein Körper litt, blieb sein Wille unerschütterlich. Mit jeder Wunde wurde der Krieger stärker, als ob die Narben auf seiner Haut die Geschichte jedes gewonnenen Sieges erzählten.\n\nDieses Tattoo ist eine Hommage an diese mythische Figur, mit Details, die seine von Herausforderungen und Ruhm geprägte Reise widerspiegeln. Der intensive Blick, immer noch von den Schlachten gezeichnet, die feste Haltung und die Narben sind Symbole für einen ständigen Kampf gegen Widrigkeiten. Es ist eine Darstellung von Durchhaltevermögen, Ehre und innerer Stärke, die jeder Mensch in sich trägt.\n\nFür diejenigen, die sich dieses Bild tätowieren lassen, ist es nicht nur ein Symbol körperlicher Stärke, sondern ein Versprechen, dass egal wie viele Narben das Leben hinterlässt, jede einzelne ein Zeichen für die Resilienz ist, die in uns wohnt.`
  String get tattoo7_large_description {
    return Intl.message(
      'In fernen Ländern, jenseits der Berge, wo die Sonne in einem smaragdgrünen Glanz untergeht, lebte ein legendärer Krieger, bekannt als der Schwertkämpfer mit drei Seelen. Dieser gefürchtete Held, mit Haaren so grün wie die Blätter der ewigen Wälder, war berühmt nicht nur für seine Schwertkunst, sondern auch für die Verbindung, die er zu seinen drei heiligen Schwertern hatte. Man sagte, jedes Schwert enthalte die Seele eines alten Drachen, was ihm die Stärke einer Armee und die Weisheit vergangener Zeitalter verlieh.\n\nEine der großen Legenden erzählt, wie der Schwertkämpfer in einer entscheidenden Schlacht sein linkes Auge im Kampf gegen ein Meeresungeheuer verlor. Obwohl sein Körper litt, blieb sein Wille unerschütterlich. Mit jeder Wunde wurde der Krieger stärker, als ob die Narben auf seiner Haut die Geschichte jedes gewonnenen Sieges erzählten.\n\nDieses Tattoo ist eine Hommage an diese mythische Figur, mit Details, die seine von Herausforderungen und Ruhm geprägte Reise widerspiegeln. Der intensive Blick, immer noch von den Schlachten gezeichnet, die feste Haltung und die Narben sind Symbole für einen ständigen Kampf gegen Widrigkeiten. Es ist eine Darstellung von Durchhaltevermögen, Ehre und innerer Stärke, die jeder Mensch in sich trägt.\n\nFür diejenigen, die sich dieses Bild tätowieren lassen, ist es nicht nur ein Symbol körperlicher Stärke, sondern ein Versprechen, dass egal wie viele Narben das Leben hinterlässt, jede einzelne ein Zeichen für die Resilienz ist, die in uns wohnt.',
      name: 'tattoo7_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Maske des Blutkriegers`
  String get tattoo8_title {
    return Intl.message(
      'Die Maske des Blutkriegers',
      name: 'tattoo8_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo symbolisiert einen jungen Krieger in seinem ständigen Kampf gegen dunkle Mächte, sowohl äußere als auch innere. Die mystische Maske, die er trägt, verleiht ihm Kraft und Schutz und spiegelt den täglichen Kampf wider, den viele führen, um ihrer inneren Lichttreue treu zu bleiben, selbst wenn die Schatten lauern.`
  String get tattoo8_short_description {
    return Intl.message(
      'Dieses Tattoo symbolisiert einen jungen Krieger in seinem ständigen Kampf gegen dunkle Mächte, sowohl äußere als auch innere. Die mystische Maske, die er trägt, verleiht ihm Kraft und Schutz und spiegelt den täglichen Kampf wider, den viele führen, um ihrer inneren Lichttreue treu zu bleiben, selbst wenn die Schatten lauern.',
      name: 'tattoo8_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den dunkelsten Ecken einer alten Welt, wo Schatten und Monster sich hinter den Masken der Menschheit verbergen, entstand eine Legende. Es erzählt die Geschichte eines jungen Kriegers, der seit seiner Kindheit von Tragödien gezeichnet war und von einem Meister der dunklen Künste eine mystische Maske erhielt. Diese Maske, mit den Augen eines dämonischen Fuchses, sollte seine Seele schützen, aber sie verlieh ihm auch die Fähigkeit, das Böse in seiner reinsten Form zu erkennen.\n\nIm Laufe seines Lebens kämpfte der Krieger gegen innere und äußere Dämonen, stellte sich Kreaturen, deren Blicke das Blut gefrieren ließen und deren Haut von Narben bedeckt war, die von uralten Schlachten zeugten. Jeder Kampf war nicht nur eine Prüfung seiner körperlichen Stärke, sondern auch seiner Fähigkeit, menschlich zu bleiben angesichts der wachsenden Dunkelheit, die ihn zu verschlingen drohte.\n\nDas Tattoo, das du trägst, fängt die Intensität dieses Kriegers in einem entscheidenden Moment seines Lebens ein. Mit der Maske auf seinem Gesicht spiegelt sein Blick eine Mischung aus Wut und Verzweiflung wider, während er einem unerbittlichen Feind gegenübersteht. Die Linien des Tattoos, voller Energie, zeigen seinen inneren Kampf, während das Blut auf seine Haut tropft, ein ständiger Hinweis auf die Opfer, die er gebracht hat.\n\nFür diejenigen, die dieses Tattoo wählen, ist die Maske ein Symbol für Schutz und Macht, aber auch für den ständigen Kampf, den jeder mit sich selbst und gegen die Ängste führt, die er zu überwinden versucht. Es ist ein Tattoo, das von Widerstandskraft, Mut und dem Willen spricht, sich niemals von der Dunkelheit beherrschen zu lassen, egal wie überwältigend sie erscheint.`
  String get tattoo8_large_description {
    return Intl.message(
      'In den dunkelsten Ecken einer alten Welt, wo Schatten und Monster sich hinter den Masken der Menschheit verbergen, entstand eine Legende. Es erzählt die Geschichte eines jungen Kriegers, der seit seiner Kindheit von Tragödien gezeichnet war und von einem Meister der dunklen Künste eine mystische Maske erhielt. Diese Maske, mit den Augen eines dämonischen Fuchses, sollte seine Seele schützen, aber sie verlieh ihm auch die Fähigkeit, das Böse in seiner reinsten Form zu erkennen.\n\nIm Laufe seines Lebens kämpfte der Krieger gegen innere und äußere Dämonen, stellte sich Kreaturen, deren Blicke das Blut gefrieren ließen und deren Haut von Narben bedeckt war, die von uralten Schlachten zeugten. Jeder Kampf war nicht nur eine Prüfung seiner körperlichen Stärke, sondern auch seiner Fähigkeit, menschlich zu bleiben angesichts der wachsenden Dunkelheit, die ihn zu verschlingen drohte.\n\nDas Tattoo, das du trägst, fängt die Intensität dieses Kriegers in einem entscheidenden Moment seines Lebens ein. Mit der Maske auf seinem Gesicht spiegelt sein Blick eine Mischung aus Wut und Verzweiflung wider, während er einem unerbittlichen Feind gegenübersteht. Die Linien des Tattoos, voller Energie, zeigen seinen inneren Kampf, während das Blut auf seine Haut tropft, ein ständiger Hinweis auf die Opfer, die er gebracht hat.\n\nFür diejenigen, die dieses Tattoo wählen, ist die Maske ein Symbol für Schutz und Macht, aber auch für den ständigen Kampf, den jeder mit sich selbst und gegen die Ängste führt, die er zu überwinden versucht. Es ist ein Tattoo, das von Widerstandskraft, Mut und dem Willen spricht, sich niemals von der Dunkelheit beherrschen zu lassen, egal wie überwältigend sie erscheint.',
      name: 'tattoo8_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Geist des blühenden Waldes`
  String get tattoo9_title {
    return Intl.message(
      'Der Geist des blühenden Waldes',
      name: 'tattoo9_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo stellt Florisombra dar, einen Waldgeist und Hüter des Pflanzenlebens. Mit einer Blume auf seinem Kopf symbolisiert es Wachstum und Erneuerung, ein Zeichen für Resilienz und Wiedergeburt für diejenigen, die dunkle Zeiten durchleben und danach streben, erneut zu erblühen.`
  String get tattoo9_short_description {
    return Intl.message(
      'Dieses Tattoo stellt Florisombra dar, einen Waldgeist und Hüter des Pflanzenlebens. Mit einer Blume auf seinem Kopf symbolisiert es Wachstum und Erneuerung, ein Zeichen für Resilienz und Wiedergeburt für diejenigen, die dunkle Zeiten durchleben und danach streben, erneut zu erblühen.',
      name: 'tattoo9_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einem versteckten Winkel des Waldes, wo die Bäume alte Geschichten flüstern und die Flüsse Melodien aus vergangenen Zeiten singen, lebt ein eigentümlicher Geist. Dieses kleine Wesen, Florisombra genannt, ist der Hüter der Pflanzen, die an den verborgensten und geheimsten Orten der Welt wachsen. Tagsüber gleitet es zwischen den Blättern, um jeden Spross zu pflegen, und nachts leuchtet es mit seiner Präsenz die versteckten Wege der verirrten Reisenden.\n\nFlorisombra ist nicht nur eine Kreatur des Waldes, sondern ein Symbol für Wachstum und Erneuerung. Seine Existenz steht für das Leben in seiner reinsten Form: zart, aber widerstandsfähig. Die Blume, die auf seinem Kopf blüht, erblüht nur einmal im Leben, und wenn sie es tut, erstrahlt alles um sie herum in einer Explosion von Farben und Leben. Doch bevor dies geschieht, muss sie die härtesten Jahreszeiten und die Schatten überstehen, die versuchen, ihr Licht zu löschen.\n\nDieses Tattoo fängt die Essenz von Florisombra ein, mit seinem kleinen, aber entschlossenen Körper und der Blume, die immer an seiner Seite bleibt, als ständige Erinnerung an Hoffnung und Erneuerung. Es ist ein ideales Tattoo für diejenigen, die die Natur und den ewigen Kreislauf von Leben, Tod und Wiedergeburt schätzen und sich daran erinnern, dass auch in den dunkelsten Momenten immer eine neue Blume blühen wird.\n\nFür diejenigen, die dieses Bild auf ihrer Haut tragen, wird Florisombra zu einem Amulett des Schutzes, einem Führer, der sie daran erinnert, standhaft zu bleiben und ihr Inneres zu nähren, im Wissen, dass nach jeder Herausforderung immer eine Zeit der Erneuerung und des Wachstums kommt.`
  String get tattoo9_large_description {
    return Intl.message(
      'In einem versteckten Winkel des Waldes, wo die Bäume alte Geschichten flüstern und die Flüsse Melodien aus vergangenen Zeiten singen, lebt ein eigentümlicher Geist. Dieses kleine Wesen, Florisombra genannt, ist der Hüter der Pflanzen, die an den verborgensten und geheimsten Orten der Welt wachsen. Tagsüber gleitet es zwischen den Blättern, um jeden Spross zu pflegen, und nachts leuchtet es mit seiner Präsenz die versteckten Wege der verirrten Reisenden.\n\nFlorisombra ist nicht nur eine Kreatur des Waldes, sondern ein Symbol für Wachstum und Erneuerung. Seine Existenz steht für das Leben in seiner reinsten Form: zart, aber widerstandsfähig. Die Blume, die auf seinem Kopf blüht, erblüht nur einmal im Leben, und wenn sie es tut, erstrahlt alles um sie herum in einer Explosion von Farben und Leben. Doch bevor dies geschieht, muss sie die härtesten Jahreszeiten und die Schatten überstehen, die versuchen, ihr Licht zu löschen.\n\nDieses Tattoo fängt die Essenz von Florisombra ein, mit seinem kleinen, aber entschlossenen Körper und der Blume, die immer an seiner Seite bleibt, als ständige Erinnerung an Hoffnung und Erneuerung. Es ist ein ideales Tattoo für diejenigen, die die Natur und den ewigen Kreislauf von Leben, Tod und Wiedergeburt schätzen und sich daran erinnern, dass auch in den dunkelsten Momenten immer eine neue Blume blühen wird.\n\nFür diejenigen, die dieses Bild auf ihrer Haut tragen, wird Florisombra zu einem Amulett des Schutzes, einem Führer, der sie daran erinnert, standhaft zu bleiben und ihr Inneres zu nähren, im Wissen, dass nach jeder Herausforderung immer eine Zeit der Erneuerung und des Wachstums kommt.',
      name: 'tattoo9_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Hüter der Sterne`
  String get tattoo10_title {
    return Intl.message(
      'Der Hüter der Sterne',
      name: 'tattoo10_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo stellt Fénix, eine mystische Feuerkatze, und ihren treuen Begleiter Aru, einen Mond-Onigiri, dar. Gemeinsam bewachen sie die Tore des Sternenreichs und stellen sicher, dass nur reine Herzen Wünsche an die Sterne richten können. Es ist ein Symbol für Schutz, Freundschaft und Loyalität, ideal für diejenigen, die eine Verbindung zum Himmlischen suchen.`
  String get tattoo10_short_description {
    return Intl.message(
      'Dieses Tattoo stellt Fénix, eine mystische Feuerkatze, und ihren treuen Begleiter Aru, einen Mond-Onigiri, dar. Gemeinsam bewachen sie die Tore des Sternenreichs und stellen sicher, dass nur reine Herzen Wünsche an die Sterne richten können. Es ist ein Symbol für Schutz, Freundschaft und Loyalität, ideal für diejenigen, die eine Verbindung zum Himmlischen suchen.',
      name: 'tattoo10_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einer fernen Ecke des Kosmos, wo die Sterne mit magischer Intensität leuchten, lebte eine Feuerkatze namens Fénix. Fénix war keine gewöhnliche Katze; ihr Körper brannte mit einer ewigen Flamme, die nie verbrannte, aber ihr Herz warm und kraftvoll hielt. Diese mythische Katze war der Hüter einer kleinen kosmischen Kreatur namens Aru, die vom Mond geboren wurde und die Form eines verzauberten Onigiri hatte. Gemeinsam bewachten Fénix und Aru die Tore des Sternenreichs, einen Ort, an dem die Träume und Hoffnungen der Menschen zu Sternbildern wurden.\n\nDie Reisenden, die es schafften, das Sternenreich zu erreichen, stellten oft Wünsche an die Sterne. Doch bevor irgendein Wunsch erfüllt wurde, mussten sie die Prüfung des Hüters bestehen. Fénix, mit seinem durchdringenden und beschützenden Blick, stellte sicher, dass die Herzen der Reisenden rein waren, und Aru, immer mit einem freundlichen Lächeln, spendete Trost denen, die es brauchten, und erleichterte ihre Last. Dieses Duo war unzertrennlich, und ihre Bindung war so stark, dass, als ein talentierter Tätowierer auf diese Legende stieß, er beschloss, sie auf der Haut eines seiner Kunden zu verewigen.\n\nDer Tätowierer, inspiriert von der Loyalität zwischen Fénix und Aru, entschied sich, diesen himmlischen Moment nachzubilden, um den Schutz und die ewige Begleitung zu symbolisieren, die ein geliebter Mensch auch in den dunkelsten Momenten bieten kann. Der Kunde, ein Liebhaber der Sterne und Fantasie, war begeistert zu sehen, wie diese Kreaturen auf seinem Arm zum Leben erweckt wurden, als Erinnerung daran, dass es immer Licht in der Dunkelheit gibt und dass Freundschaft und Zuneigung die mächtigsten Hüter von allen sind.`
  String get tattoo10_large_description {
    return Intl.message(
      'In einer fernen Ecke des Kosmos, wo die Sterne mit magischer Intensität leuchten, lebte eine Feuerkatze namens Fénix. Fénix war keine gewöhnliche Katze; ihr Körper brannte mit einer ewigen Flamme, die nie verbrannte, aber ihr Herz warm und kraftvoll hielt. Diese mythische Katze war der Hüter einer kleinen kosmischen Kreatur namens Aru, die vom Mond geboren wurde und die Form eines verzauberten Onigiri hatte. Gemeinsam bewachten Fénix und Aru die Tore des Sternenreichs, einen Ort, an dem die Träume und Hoffnungen der Menschen zu Sternbildern wurden.\n\nDie Reisenden, die es schafften, das Sternenreich zu erreichen, stellten oft Wünsche an die Sterne. Doch bevor irgendein Wunsch erfüllt wurde, mussten sie die Prüfung des Hüters bestehen. Fénix, mit seinem durchdringenden und beschützenden Blick, stellte sicher, dass die Herzen der Reisenden rein waren, und Aru, immer mit einem freundlichen Lächeln, spendete Trost denen, die es brauchten, und erleichterte ihre Last. Dieses Duo war unzertrennlich, und ihre Bindung war so stark, dass, als ein talentierter Tätowierer auf diese Legende stieß, er beschloss, sie auf der Haut eines seiner Kunden zu verewigen.\n\nDer Tätowierer, inspiriert von der Loyalität zwischen Fénix und Aru, entschied sich, diesen himmlischen Moment nachzubilden, um den Schutz und die ewige Begleitung zu symbolisieren, die ein geliebter Mensch auch in den dunkelsten Momenten bieten kann. Der Kunde, ein Liebhaber der Sterne und Fantasie, war begeistert zu sehen, wie diese Kreaturen auf seinem Arm zum Leben erweckt wurden, als Erinnerung daran, dass es immer Licht in der Dunkelheit gibt und dass Freundschaft und Zuneigung die mächtigsten Hüter von allen sind.',
      name: 'tattoo10_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Reise nach dem verlorenen Gold`
  String get tattoo11_title {
    return Intl.message(
      'Die Reise nach dem verlorenen Gold',
      name: 'tattoo11_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt Homer und Bart auf einem Piratenabenteuer, bei dem sie einem Geldsack hinterherjagen, der unerreichbare Ziele und Wünsche symbolisiert. Mit einem lebendigen und cartoonartigen Stil fängt das Werk den Kampfgeist und den Humor dieser ikonischen Figuren ein, während sie auf der Suche nach ihrem Schatz segeln.`
  String get tattoo11_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt Homer und Bart auf einem Piratenabenteuer, bei dem sie einem Geldsack hinterherjagen, der unerreichbare Ziele und Wünsche symbolisiert. Mit einem lebendigen und cartoonartigen Stil fängt das Werk den Kampfgeist und den Humor dieser ikonischen Figuren ein, während sie auf der Suche nach ihrem Schatz segeln.',
      name: 'tattoo11_short_description',
      desc: '',
      args: [],
    );
  }

  /// `Im weiten Ozean von Springfield segelt ein Piratenschiff auf der Suche nach dem begehrtesten Schatz: einem Reichtum jenseits aller Vorstellungskraft. Der Kapitän dieses eigenartigen Schiffs ist ein Mann, der in allen Ecken der Piratenwelt bekannt ist: Homer 'Der Unbesiegbare', ein Seemann mit einem unstillbaren Verlangen nach Abenteuern und vor allem nach Gold. Doch er ist auf dieser Reise nicht allein. An seiner Seite ist sein Sohn Bart, der junge Schiffsjunge, der davon träumt, der gefürchtetste Pirat aller Zeiten zu werden, und sich in die Tiefen des Meeres stürzt, um einen Geldsack zu verfolgen, der wie ein goldener Fisch schimmert und entwischt.\n\nBeide Figuren stehen Stürmen, Meereskreaturen und Verrat gegenüber. Der Geldsack, der an einem unsichtbaren Haken hängt, symbolisiert unerreichbare Wünsche und Versuchungen, die immer in Reichweite zu sein scheinen, aber nie ganz greifbar werden. In dieser Geschichte stehen Homer und Bart für den ewigen Kampf zwischen dem, was man will, und dem, was man wirklich braucht. Der Tätowierer, inspiriert von der Entschlossenheit des Kunden, seine persönlichen und beruflichen Ziele zu erreichen, entschied sich, diese Piratenversion dieser ikonischen Figuren darzustellen, indem er lebendige Farben und einen cartoonartigen Stil verwendete, um sowohl den Humor als auch die Tiefe ihrer Abenteuer zu reflektieren.\n\nDas Tattoo zeigt einen Moment, in dem Bart mit entschlossener Miene in Richtung des Schatzes taucht, während Homer in seiner heldenhaftesten Pose die Situation zu beherrschen scheint. Dieses Design ist nicht nur eine Hommage an eine berühmte Fernsehserie, sondern erinnert uns auch daran, dass das Leben eine ständige Suche ist und das, was wir wirklich schätzen, vielleicht gerade außerhalb unserer Reichweite liegt und auf den richtigen Moment wartet, um eingefangen zu werden.`
  String get tattoo11_large_description {
    return Intl.message(
      'Im weiten Ozean von Springfield segelt ein Piratenschiff auf der Suche nach dem begehrtesten Schatz: einem Reichtum jenseits aller Vorstellungskraft. Der Kapitän dieses eigenartigen Schiffs ist ein Mann, der in allen Ecken der Piratenwelt bekannt ist: Homer \'Der Unbesiegbare\', ein Seemann mit einem unstillbaren Verlangen nach Abenteuern und vor allem nach Gold. Doch er ist auf dieser Reise nicht allein. An seiner Seite ist sein Sohn Bart, der junge Schiffsjunge, der davon träumt, der gefürchtetste Pirat aller Zeiten zu werden, und sich in die Tiefen des Meeres stürzt, um einen Geldsack zu verfolgen, der wie ein goldener Fisch schimmert und entwischt.\n\nBeide Figuren stehen Stürmen, Meereskreaturen und Verrat gegenüber. Der Geldsack, der an einem unsichtbaren Haken hängt, symbolisiert unerreichbare Wünsche und Versuchungen, die immer in Reichweite zu sein scheinen, aber nie ganz greifbar werden. In dieser Geschichte stehen Homer und Bart für den ewigen Kampf zwischen dem, was man will, und dem, was man wirklich braucht. Der Tätowierer, inspiriert von der Entschlossenheit des Kunden, seine persönlichen und beruflichen Ziele zu erreichen, entschied sich, diese Piratenversion dieser ikonischen Figuren darzustellen, indem er lebendige Farben und einen cartoonartigen Stil verwendete, um sowohl den Humor als auch die Tiefe ihrer Abenteuer zu reflektieren.\n\nDas Tattoo zeigt einen Moment, in dem Bart mit entschlossener Miene in Richtung des Schatzes taucht, während Homer in seiner heldenhaftesten Pose die Situation zu beherrschen scheint. Dieses Design ist nicht nur eine Hommage an eine berühmte Fernsehserie, sondern erinnert uns auch daran, dass das Leben eine ständige Suche ist und das, was wir wirklich schätzen, vielleicht gerade außerhalb unserer Reichweite liegt und auf den richtigen Moment wartet, um eingefangen zu werden.',
      name: 'tattoo11_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Reise nach dem verlorenen Gold`
  String get tattoo12_title {
    return Intl.message(
      'Die Reise nach dem verlorenen Gold',
      name: 'tattoo12_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt Homer und Bart auf einem Piratenabenteuer, bei dem sie einem Geldsack hinterherjagen, der unerreichbare Ziele und Wünsche symbolisiert. Mit einem lebendigen und cartoonartigen Stil fängt das Werk den Kampfgeist und den Humor dieser ikonischen Figuren ein, während sie auf der Suche nach ihrem Schatz segeln.`
  String get tattoo12_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt Homer und Bart auf einem Piratenabenteuer, bei dem sie einem Geldsack hinterherjagen, der unerreichbare Ziele und Wünsche symbolisiert. Mit einem lebendigen und cartoonartigen Stil fängt das Werk den Kampfgeist und den Humor dieser ikonischen Figuren ein, während sie auf der Suche nach ihrem Schatz segeln.',
      name: 'tattoo12_short_description',
      desc: '',
      args: [],
    );
  }

  /// `Im weiten Ozean von Springfield segelt ein Piratenschiff auf der Suche nach dem begehrtesten Schatz: einem Reichtum jenseits aller Vorstellungskraft. Der Kapitän dieses eigenartigen Schiffs ist ein Mann, der in allen Ecken der Piratenwelt bekannt ist: Homer 'Der Unbesiegbare', ein Seemann mit einem unstillbaren Verlangen nach Abenteuern und vor allem nach Gold. Doch er ist auf dieser Reise nicht allein. An seiner Seite ist sein Sohn Bart, der junge Schiffsjunge, der davon träumt, der gefürchtetste Pirat aller Zeiten zu werden, und sich in die Tiefen des Meeres stürzt, um einen Geldsack zu verfolgen, der wie ein goldener Fisch schimmert und entwischt.\n\nBeide Figuren stehen Stürmen, Meereskreaturen und Verrat gegenüber. Der Geldsack, der an einem unsichtbaren Haken hängt, symbolisiert unerreichbare Wünsche und Versuchungen, die immer in Reichweite zu sein scheinen, aber nie ganz greifbar werden. In dieser Geschichte stehen Homer und Bart für den ewigen Kampf zwischen dem, was man will, und dem, was man wirklich braucht. Der Tätowierer, inspiriert von der Entschlossenheit des Kunden, seine persönlichen und beruflichen Ziele zu erreichen, entschied sich, diese Piratenversion dieser ikonischen Figuren darzustellen, indem er lebendige Farben und einen cartoonartigen Stil verwendete, um sowohl den Humor als auch die Tiefe ihrer Abenteuer zu reflektieren.\n\nDas Tattoo zeigt einen Moment, in dem Bart mit entschlossener Miene in Richtung des Schatzes taucht, während Homer in seiner heldenhaftesten Pose die Situation zu beherrschen scheint. Dieses Design ist nicht nur eine Hommage an eine berühmte Fernsehserie, sondern erinnert uns auch daran, dass das Leben eine ständige Suche ist und das, was wir wirklich schätzen, vielleicht gerade außerhalb unserer Reichweite liegt und auf den richtigen Moment wartet, um eingefangen zu werden.`
  String get tattoo12_large_description {
    return Intl.message(
      'Im weiten Ozean von Springfield segelt ein Piratenschiff auf der Suche nach dem begehrtesten Schatz: einem Reichtum jenseits aller Vorstellungskraft. Der Kapitän dieses eigenartigen Schiffs ist ein Mann, der in allen Ecken der Piratenwelt bekannt ist: Homer \'Der Unbesiegbare\', ein Seemann mit einem unstillbaren Verlangen nach Abenteuern und vor allem nach Gold. Doch er ist auf dieser Reise nicht allein. An seiner Seite ist sein Sohn Bart, der junge Schiffsjunge, der davon träumt, der gefürchtetste Pirat aller Zeiten zu werden, und sich in die Tiefen des Meeres stürzt, um einen Geldsack zu verfolgen, der wie ein goldener Fisch schimmert und entwischt.\n\nBeide Figuren stehen Stürmen, Meereskreaturen und Verrat gegenüber. Der Geldsack, der an einem unsichtbaren Haken hängt, symbolisiert unerreichbare Wünsche und Versuchungen, die immer in Reichweite zu sein scheinen, aber nie ganz greifbar werden. In dieser Geschichte stehen Homer und Bart für den ewigen Kampf zwischen dem, was man will, und dem, was man wirklich braucht. Der Tätowierer, inspiriert von der Entschlossenheit des Kunden, seine persönlichen und beruflichen Ziele zu erreichen, entschied sich, diese Piratenversion dieser ikonischen Figuren darzustellen, indem er lebendige Farben und einen cartoonartigen Stil verwendete, um sowohl den Humor als auch die Tiefe ihrer Abenteuer zu reflektieren.\n\nDas Tattoo zeigt einen Moment, in dem Bart mit entschlossener Miene in Richtung des Schatzes taucht, während Homer in seiner heldenhaftesten Pose die Situation zu beherrschen scheint. Dieses Design ist nicht nur eine Hommage an eine berühmte Fernsehserie, sondern erinnert uns auch daran, dass das Leben eine ständige Suche ist und das, was wir wirklich schätzen, vielleicht gerade außerhalb unserer Reichweite liegt und auf den richtigen Moment wartet, um eingefangen zu werden.',
      name: 'tattoo12_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Eid der Serengeti`
  String get tattoo13_title {
    return Intl.message(
      'Der Eid der Serengeti',
      name: 'tattoo13_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo ist eine Hommage an die unvergessliche Freundschaft zwischen Simba, Timon und Pumbaa und verkörpert den Geist des Spruchs 'Hakuna Matata'. Mit lebendigen Farben und dynamischen Linien repräsentiert es die Freude und die Hingabe, sorgenfrei zu leben, und erinnert uns an die Kraft der Freundschaft und des Glücks in schwierigen Zeiten.`
  String get tattoo13_short_description {
    return Intl.message(
      'Dieses Tattoo ist eine Hommage an die unvergessliche Freundschaft zwischen Simba, Timon und Pumbaa und verkörpert den Geist des Spruchs \'Hakuna Matata\'. Mit lebendigen Farben und dynamischen Linien repräsentiert es die Freude und die Hingabe, sorgenfrei zu leben, und erinnert uns an die Kraft der Freundschaft und des Glücks in schwierigen Zeiten.',
      name: 'tattoo13_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In alten Zeiten, verloren in den Weiten der Serengeti, gab es ein geheimes Königreich, in dem Tiere nicht nur herrschten, sondern in Frieden unter einem uralten Eid von Freiheit und Freude lebten. In diesem Königreich gab es einen Löwen namens Simba, der von Geburt an dazu bestimmt war, König zu werden, dessen wahre Stärke jedoch nicht in seiner Abstammung lag, sondern in seiner Fähigkeit, Freude in den dunkelsten Momenten zu finden. Simba, begleitet von seinen unzertrennlichen Freunden Timon und Pumbaa, begab sich auf ein Abenteuer, das sie zur Entdeckung der magischen Worte führte: 'Hakuna Matata'. Diese Worte waren mehr als nur ein Spruch; sie waren ein Eid, sorgenfrei zu leben, Widrigkeiten mit einem Lächeln und einem leichten Herzen zu begegnen.\n\nJedes Tier im Königreich hatte sein eigenes Ehrensymbol, und für Timon und Pumbaa war ihre Hingabe an Simba so groß, dass sie beschlossen, sein Bild auf ihre Herzen ... und auf ihre Haut zu tätowieren. Ein reisender Tätowierer, dessen Nadel von der Magie der alten Schamanen der Serengeti geleitet wurde, wurde gerufen, um dieses Band auf ihren Körpern zu verewigen. Das Tattoo war nicht nur Kunst; es war eine Erinnerung an das Versprechen, ohne Angst, ohne Zweifel und immer mit einem Lächeln zu leben. So repräsentierte jede Linie des Tattoos einen gemeinsam erlebten Moment, ein Lachen, ein Lied unter den afrikanischen Sternen und ein unzerbrechliches Versprechen ewiger Freundschaft.\n\nDieses Tattoo steht für die unzerstörbare Bindung zwischen Freunden, die Kraft des Humors und der Einfachheit, um die größten Prüfungen des Lebens zu überwinden. Die leuchtenden Farben fangen nicht nur das Wesen der Savanne ein, sondern auch die Lebensenergie ihrer Charaktere und erinnern uns daran, dass die Welt zwar weit und voller Herausforderungen ist, aber es immer einen Weg gibt, dem Leid mit einem Lächeln zu begegnen.`
  String get tattoo13_large_description {
    return Intl.message(
      'In alten Zeiten, verloren in den Weiten der Serengeti, gab es ein geheimes Königreich, in dem Tiere nicht nur herrschten, sondern in Frieden unter einem uralten Eid von Freiheit und Freude lebten. In diesem Königreich gab es einen Löwen namens Simba, der von Geburt an dazu bestimmt war, König zu werden, dessen wahre Stärke jedoch nicht in seiner Abstammung lag, sondern in seiner Fähigkeit, Freude in den dunkelsten Momenten zu finden. Simba, begleitet von seinen unzertrennlichen Freunden Timon und Pumbaa, begab sich auf ein Abenteuer, das sie zur Entdeckung der magischen Worte führte: \'Hakuna Matata\'. Diese Worte waren mehr als nur ein Spruch; sie waren ein Eid, sorgenfrei zu leben, Widrigkeiten mit einem Lächeln und einem leichten Herzen zu begegnen.\n\nJedes Tier im Königreich hatte sein eigenes Ehrensymbol, und für Timon und Pumbaa war ihre Hingabe an Simba so groß, dass sie beschlossen, sein Bild auf ihre Herzen ... und auf ihre Haut zu tätowieren. Ein reisender Tätowierer, dessen Nadel von der Magie der alten Schamanen der Serengeti geleitet wurde, wurde gerufen, um dieses Band auf ihren Körpern zu verewigen. Das Tattoo war nicht nur Kunst; es war eine Erinnerung an das Versprechen, ohne Angst, ohne Zweifel und immer mit einem Lächeln zu leben. So repräsentierte jede Linie des Tattoos einen gemeinsam erlebten Moment, ein Lachen, ein Lied unter den afrikanischen Sternen und ein unzerbrechliches Versprechen ewiger Freundschaft.\n\nDieses Tattoo steht für die unzerstörbare Bindung zwischen Freunden, die Kraft des Humors und der Einfachheit, um die größten Prüfungen des Lebens zu überwinden. Die leuchtenden Farben fangen nicht nur das Wesen der Savanne ein, sondern auch die Lebensenergie ihrer Charaktere und erinnern uns daran, dass die Welt zwar weit und voller Herausforderungen ist, aber es immer einen Weg gibt, dem Leid mit einem Lächeln zu begegnen.',
      name: 'tattoo13_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Geist des Waldes`
  String get tattoo14_title {
    return Intl.message(
      'Der Geist des Waldes',
      name: 'tattoo14_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo des mystischen Fuchses Faelan verkörpert den Schutzgeist des verzauberten Waldes. Mit seinem rötlichen Fell und seinem intensiven Blick symbolisiert er die Verbindung zwischen Mensch und Natur, während die goldenen Blätter die Winde des Wandels und die transformative Kraft schwieriger Zeiten darstellen. Eine Erinnerung daran, dass es in dunklen Momenten immer Führung gibt.`
  String get tattoo14_short_description {
    return Intl.message(
      'Dieses Tattoo des mystischen Fuchses Faelan verkörpert den Schutzgeist des verzauberten Waldes. Mit seinem rötlichen Fell und seinem intensiven Blick symbolisiert er die Verbindung zwischen Mensch und Natur, während die goldenen Blätter die Winde des Wandels und die transformative Kraft schwieriger Zeiten darstellen. Eine Erinnerung daran, dass es in dunklen Momenten immer Führung gibt.',
      name: 'tattoo14_short_description',
      desc: '',
      args: [],
    );
  }

  /// `Vor langer Zeit, in einem verzauberten Wald, der zwischen den Welten der Sterblichen und der spirituellen Wesen existierte, herrschte ein Fuchs namens Faelan. Dieser Fuchs war kein gewöhnliches Tier, sondern ein magisches Wesen, das durch Schatten schlüpfen und durch die Träume derer wandeln konnte, die sich im Wald verirrt hatten. Faelan beschützte nicht nur den Wald, sondern führte auch verlorene Seelen, indem er ihnen den Weg zu ihrem Herzen zeigte und ihnen half, ihren Zweck wiederzufinden. Unter seinem rötlichen Fell schimmerten die Geheimnisse der Natur, die Mysterien des Windes und die vergessenen Geschichten alter Bäume.\n\nEines Tages betrat ein wandernder Tätowierer, dessen Leben durch Reisen geprägt war, den Wald auf der Suche nach Antworten. Dieser Tätowierer, der seine Inspiration verloren hatte, traf auf Faelan. In dieser magischen Nacht sprach der Fuchs zu ihm in Träumen und erzählte ihm von der Wichtigkeit, sich mit dem wilden Geist zu verbinden, der in jedem Menschen lebt. Faelan bot ihm einen Pakt an: Er würde die Macht und Essenz des Waldes in seiner Haut durch ein Tattoo tragen, und im Gegenzug würde er der Wächter des Fuchsgeistes in der Menschenwelt sein.\n\nDer Tätowierer akzeptierte und gravierte mit zitternden, aber entschlossenen Händen Faelans Bild auf seine eigene Haut. Dieses Tattoo ist eine Erinnerung an die tiefe Verbindung zwischen Mensch und Natur, daran, dass es in den dunkelsten Momenten immer einen Führer gibt, einen Geist, der uns den Weg weist. Die goldenen Blätter, die den Fuchs umgeben, symbolisieren die Winde des Wandels und die Übergänge des Lebens, während Faelans durchdringender Blick uns daran erinnert, dass es immer eine Kraft gibt, die über uns wacht und uns aus den Schatten schützt.\n\nDieses Tattoo ist mehr als nur ein Bild: Es ist ein Portal zu jener magischen Welt, eine Erinnerung daran, dass wir alle einen wilden Geist in uns tragen und dass die Natur immer da ist, um uns zu führen, wenn wir wissen, wie wir zuhören können.`
  String get tattoo14_large_description {
    return Intl.message(
      'Vor langer Zeit, in einem verzauberten Wald, der zwischen den Welten der Sterblichen und der spirituellen Wesen existierte, herrschte ein Fuchs namens Faelan. Dieser Fuchs war kein gewöhnliches Tier, sondern ein magisches Wesen, das durch Schatten schlüpfen und durch die Träume derer wandeln konnte, die sich im Wald verirrt hatten. Faelan beschützte nicht nur den Wald, sondern führte auch verlorene Seelen, indem er ihnen den Weg zu ihrem Herzen zeigte und ihnen half, ihren Zweck wiederzufinden. Unter seinem rötlichen Fell schimmerten die Geheimnisse der Natur, die Mysterien des Windes und die vergessenen Geschichten alter Bäume.\n\nEines Tages betrat ein wandernder Tätowierer, dessen Leben durch Reisen geprägt war, den Wald auf der Suche nach Antworten. Dieser Tätowierer, der seine Inspiration verloren hatte, traf auf Faelan. In dieser magischen Nacht sprach der Fuchs zu ihm in Träumen und erzählte ihm von der Wichtigkeit, sich mit dem wilden Geist zu verbinden, der in jedem Menschen lebt. Faelan bot ihm einen Pakt an: Er würde die Macht und Essenz des Waldes in seiner Haut durch ein Tattoo tragen, und im Gegenzug würde er der Wächter des Fuchsgeistes in der Menschenwelt sein.\n\nDer Tätowierer akzeptierte und gravierte mit zitternden, aber entschlossenen Händen Faelans Bild auf seine eigene Haut. Dieses Tattoo ist eine Erinnerung an die tiefe Verbindung zwischen Mensch und Natur, daran, dass es in den dunkelsten Momenten immer einen Führer gibt, einen Geist, der uns den Weg weist. Die goldenen Blätter, die den Fuchs umgeben, symbolisieren die Winde des Wandels und die Übergänge des Lebens, während Faelans durchdringender Blick uns daran erinnert, dass es immer eine Kraft gibt, die über uns wacht und uns aus den Schatten schützt.\n\nDieses Tattoo ist mehr als nur ein Bild: Es ist ein Portal zu jener magischen Welt, eine Erinnerung daran, dass wir alle einen wilden Geist in uns tragen und dass die Natur immer da ist, um uns zu führen, wenn wir wissen, wie wir zuhören können.',
      name: 'tattoo14_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Dämonenmaske und die Blume der Wiedergeburt`
  String get tattoo15_title {
    return Intl.message(
      'Die Dämonenmaske und die Blume der Wiedergeburt',
      name: 'tattoo15_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo repräsentiert die Dualität zwischen Schmerz und Heilung. Kaijins Dämonenmaske symbolisiert die Konfrontation mit unseren eigenen Ängsten, während die Calla-Blume für die Wiedergeburt nach Widrigkeiten steht. Mit lebendigen Farben und einem dynamischen Design dient dieses Tattoo als Erinnerung an die Kraft der Transformation und die Schönheit, die aus dem Chaos entsteht.`
  String get tattoo15_short_description {
    return Intl.message(
      'Dieses Tattoo repräsentiert die Dualität zwischen Schmerz und Heilung. Kaijins Dämonenmaske symbolisiert die Konfrontation mit unseren eigenen Ängsten, während die Calla-Blume für die Wiedergeburt nach Widrigkeiten steht. Mit lebendigen Farben und einem dynamischen Design dient dieses Tattoo als Erinnerung an die Kraft der Transformation und die Schönheit, die aus dem Chaos entsteht.',
      name: 'tattoo15_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den Tiefen eines verborgenen Reiches zwischen der Welt der Lebenden und der Toten gab es eine Legende über einen Dämon namens Kaijin. Kaijin war nicht wie andere Dämonen, die Chaos säten. Er war der Wächter umherirrenden Seelen, und obwohl Sterbliche sein Gesicht fürchteten, war sein Zweck nicht böse. In ihm ruhte eine Wut, die alles auf ihrem Weg verwandeln konnte, aber auch eine heilende Kraft, die jene erlösen konnte, die mutig genug waren, ihm in die Augen zu sehen und sich ihren eigenen Ängsten zu stellen.\n\nKaijin lebte auf einem Berg, der von dichtem Nebel umhüllt war, und von Zeit zu Zeit bestiegen Seelen, die nach Wiedergeburt suchten, diesen Berg, um ihren inneren Dämonen zu begegnen. Wenn sie es schafften, die Furcht zu überwinden, die Kaijin ihnen einflößte, wurden sie mit einem neuen Leben belohnt, gereinigt durch den Schmerz und verwandelt durch den Prozess. Auf ihrem Weg nach oben begegneten sie auch den Calla-Blumen, die auf dem felsigen Boden wuchsen und Symbole der Wiedergeburt und der Schönheit darstellten, die aus der Not heraus entsteht.\n\nEin Tätowierer, tief bewegt von dieser Geschichte, beschloss, die Essenz dieser Legende in einem Tattoo zu verewigen. Mit dynamischen Linien und lebendigen Farben entwarf er die Dämonenmaske, um Kaijins Stärke und die menschliche Fähigkeit zu symbolisieren, sich unseren dunkelsten Ängsten zu stellen. Um die Maske herum sind Calla-Blumen in voller Blüte zu sehen, die das Versprechen der Erneuerung darstellen, das nach dem Durchleben von Schmerz kommt.\n\nDieses Tattoo dient als ständige Erinnerung an die Dualität des Lebens: dass im Schmerz der Samen der Heilung liegt und dass die Konfrontation mit unseren Dämonen der einzige Weg ist, um uns wirklich zu verwandeln. Der Kontrast zwischen der einschüchternden Maske und den zarten Blumen betont, dass selbst im dunkelsten Chaos immer eine Schönheit auf uns wartet, die geboren werden will.`
  String get tattoo15_large_description {
    return Intl.message(
      'In den Tiefen eines verborgenen Reiches zwischen der Welt der Lebenden und der Toten gab es eine Legende über einen Dämon namens Kaijin. Kaijin war nicht wie andere Dämonen, die Chaos säten. Er war der Wächter umherirrenden Seelen, und obwohl Sterbliche sein Gesicht fürchteten, war sein Zweck nicht böse. In ihm ruhte eine Wut, die alles auf ihrem Weg verwandeln konnte, aber auch eine heilende Kraft, die jene erlösen konnte, die mutig genug waren, ihm in die Augen zu sehen und sich ihren eigenen Ängsten zu stellen.\n\nKaijin lebte auf einem Berg, der von dichtem Nebel umhüllt war, und von Zeit zu Zeit bestiegen Seelen, die nach Wiedergeburt suchten, diesen Berg, um ihren inneren Dämonen zu begegnen. Wenn sie es schafften, die Furcht zu überwinden, die Kaijin ihnen einflößte, wurden sie mit einem neuen Leben belohnt, gereinigt durch den Schmerz und verwandelt durch den Prozess. Auf ihrem Weg nach oben begegneten sie auch den Calla-Blumen, die auf dem felsigen Boden wuchsen und Symbole der Wiedergeburt und der Schönheit darstellten, die aus der Not heraus entsteht.\n\nEin Tätowierer, tief bewegt von dieser Geschichte, beschloss, die Essenz dieser Legende in einem Tattoo zu verewigen. Mit dynamischen Linien und lebendigen Farben entwarf er die Dämonenmaske, um Kaijins Stärke und die menschliche Fähigkeit zu symbolisieren, sich unseren dunkelsten Ängsten zu stellen. Um die Maske herum sind Calla-Blumen in voller Blüte zu sehen, die das Versprechen der Erneuerung darstellen, das nach dem Durchleben von Schmerz kommt.\n\nDieses Tattoo dient als ständige Erinnerung an die Dualität des Lebens: dass im Schmerz der Samen der Heilung liegt und dass die Konfrontation mit unseren Dämonen der einzige Weg ist, um uns wirklich zu verwandeln. Der Kontrast zwischen der einschüchternden Maske und den zarten Blumen betont, dass selbst im dunkelsten Chaos immer eine Schönheit auf uns wartet, die geboren werden will.',
      name: 'tattoo15_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Die Zwillings-Tiger des Schicksals`
  String get tattoo16_title {
    return Intl.message(
      'Die Zwillings-Tiger des Schicksals',
      name: 'tattoo16_title',
      desc: '',
      args: [],
    );
  }

  /// `Das Tattoo der Zwillings-Tiger symbolisiert das Gleichgewicht zwischen Stärke und Weisheit. Diese Wächtertiger, umgeben von heiligen Schriften, bieten Schutz und Mut für diejenigen, die sie tragen, und repräsentieren den Kampf zwischen den gegensätzlichen Kräften des Lebens und des Schicksals. Ein traditionelles Design voller Mystik und Kraft.`
  String get tattoo16_short_description {
    return Intl.message(
      'Das Tattoo der Zwillings-Tiger symbolisiert das Gleichgewicht zwischen Stärke und Weisheit. Diese Wächtertiger, umgeben von heiligen Schriften, bieten Schutz und Mut für diejenigen, die sie tragen, und repräsentieren den Kampf zwischen den gegensätzlichen Kräften des Lebens und des Schicksals. Ein traditionelles Design voller Mystik und Kraft.',
      name: 'tattoo16_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den alten Tempeln eines vergessenen Königreichs bewachten zwei Zwillings-Tiger den Eingang zu den Mysterien des Universums. Dies waren keine gewöhnlichen Tiger; sie waren die Wächter des Schicksals, mystische Wesen, die von Mönchen beschworen wurden, um diejenigen zu schützen, die ihr heiliges Symbol trugen. Über Generationen hinweg in Stein und Haut gemeißelt, repräsentierten diese Tiger das Gleichgewicht zwischen den gegensätzlichen Kräften des Lebens: Stärke und Weisheit, Aggression und Gelassenheit.\n\nMan erzählt sich, dass die tapfersten Krieger, die sich in die Wälder wagten, um dem Unbekannten zu begegnen, die Zeichen dieser Tiger auf ihrem Rücken trugen, die von denselben Meistern eingraviert wurden, die die heiligen Schriften in den Bergen schrieben. Jede Linie des Tattoos, jedes Symbol, war ein Gebet, ein schützendes Mantra, das den Körper und den Geist des Trägers versiegelte und sicherstellte, dass keine böse Macht sie von ihrem Ziel abbringen konnte. Die Zwillings-Tiger repräsentierten nicht nur körperliche Kraft, sondern auch die Dualität des menschlichen Geistes: den ständigen Kampf zwischen Gut und Böse, zwischen Impuls und Selbstbeherrschung.\n\nDieses Tattoo ist nicht nur ein Kunstwerk, es ist ein Ritual, eine spirituelle Zeremonie, bei der jede Nadel, die die Haut durchdringt, einen weiteren Schritt zur Verbindung mit den Urkräften des Kosmos darstellt. Für diejenigen, die es tragen, ist es eine unsichtbare Rüstung, ein Versprechen von Schutz und Mut in den dunkelsten Momenten. Auf dem Rücken des Trägers scheinen die Tiger bereit zu sein zu springen, perfekt kreisend um ein zentrales Symbol, das den Kern des Lebens, das Schicksal und die Ewigkeit darstellt.\n\nDieses Design wurde für diejenigen geschaffen, die eine Erinnerung an ihre innere Stärke und den ewigen Kampf um das Gleichgewicht tragen möchten. Der Tätowierer, ein Meister der Linien und Symbole, arbeitete akribisch daran, dieses uralte Stück neu zu erschaffen und einer Tradition neues Leben einzuhauchen, die durch die Zeiten widerhallt.`
  String get tattoo16_large_description {
    return Intl.message(
      'In den alten Tempeln eines vergessenen Königreichs bewachten zwei Zwillings-Tiger den Eingang zu den Mysterien des Universums. Dies waren keine gewöhnlichen Tiger; sie waren die Wächter des Schicksals, mystische Wesen, die von Mönchen beschworen wurden, um diejenigen zu schützen, die ihr heiliges Symbol trugen. Über Generationen hinweg in Stein und Haut gemeißelt, repräsentierten diese Tiger das Gleichgewicht zwischen den gegensätzlichen Kräften des Lebens: Stärke und Weisheit, Aggression und Gelassenheit.\n\nMan erzählt sich, dass die tapfersten Krieger, die sich in die Wälder wagten, um dem Unbekannten zu begegnen, die Zeichen dieser Tiger auf ihrem Rücken trugen, die von denselben Meistern eingraviert wurden, die die heiligen Schriften in den Bergen schrieben. Jede Linie des Tattoos, jedes Symbol, war ein Gebet, ein schützendes Mantra, das den Körper und den Geist des Trägers versiegelte und sicherstellte, dass keine böse Macht sie von ihrem Ziel abbringen konnte. Die Zwillings-Tiger repräsentierten nicht nur körperliche Kraft, sondern auch die Dualität des menschlichen Geistes: den ständigen Kampf zwischen Gut und Böse, zwischen Impuls und Selbstbeherrschung.\n\nDieses Tattoo ist nicht nur ein Kunstwerk, es ist ein Ritual, eine spirituelle Zeremonie, bei der jede Nadel, die die Haut durchdringt, einen weiteren Schritt zur Verbindung mit den Urkräften des Kosmos darstellt. Für diejenigen, die es tragen, ist es eine unsichtbare Rüstung, ein Versprechen von Schutz und Mut in den dunkelsten Momenten. Auf dem Rücken des Trägers scheinen die Tiger bereit zu sein zu springen, perfekt kreisend um ein zentrales Symbol, das den Kern des Lebens, das Schicksal und die Ewigkeit darstellt.\n\nDieses Design wurde für diejenigen geschaffen, die eine Erinnerung an ihre innere Stärke und den ewigen Kampf um das Gleichgewicht tragen möchten. Der Tätowierer, ein Meister der Linien und Symbole, arbeitete akribisch daran, dieses uralte Stück neu zu erschaffen und einer Tradition neues Leben einzuhauchen, die durch die Zeiten widerhallt.',
      name: 'tattoo16_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Rote Blitzkrieger`
  String get tattoo17_title {
    return Intl.message(
      'Der Rote Blitzkrieger',
      name: 'tattoo17_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt Kakashi Hatake, der die Kraft des Chidori kanalisiert, eine Blitztechnik, die in Rot gehüllt ist und sowohl seine Stärke als auch die Emotionen symbolisiert, die ihn antreiben. Mit einem fokussierten Blick und spürbarer Energie fängt dieses Design die Essenz des Kriegers und seinen unerschütterlichen Willen ein, diejenigen zu beschützen, die ihm am Herzen liegen.`
  String get tattoo17_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt Kakashi Hatake, der die Kraft des Chidori kanalisiert, eine Blitztechnik, die in Rot gehüllt ist und sowohl seine Stärke als auch die Emotionen symbolisiert, die ihn antreiben. Mit einem fokussierten Blick und spürbarer Energie fängt dieses Design die Essenz des Kriegers und seinen unerschütterlichen Willen ein, diejenigen zu beschützen, die ihm am Herzen liegen.',
      name: 'tattoo17_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den verborgenen Ländern, in denen sich Shinobi-Krieger in der Kunst der Unsichtbarkeit und Präzision trainieren, sticht ein Krieger durch seine Beherrschung der Blitzkraft hervor. Kakashi Hatake, bekannt als der 'Kopier-Ninja', hat eine Technik perfektioniert, die so tödlich wie schön ist: das Chidori, oder 'Tausend Vögel'. Diese Technik, die Blitzenergie in seiner Hand kanalisiert, ermöglicht es ihm, jedes Hindernis zu durchdringen, das sich ihm in den Weg stellt. Aber was nur wenige wissen, ist, dass jedes Mal, wenn er diese Kraft beschwört, es nicht nur eine Technik ist; es ist eine Erinnerung an sein Versprechen, diejenigen zu schützen, die er liebt, und eine Warnung an diejenigen, die es wagen, sich ihm zu stellen.\n\nDas Tattoo stellt Kakashi in dem genauen Moment dar, in dem die Kraft des Chidori zum Leben erwacht. Das Rot, das die Energie umgibt, symbolisiert nicht nur die Intensität der Kraft, sondern auch das Blut und die Emotionen, die den Weg dieses Kriegers geprägt haben. Kakashis intensiver Blick, eingerahmt von seinem Stirnband, spiegelt seinen unerschütterlichen Fokus und die Weisheit wider, die er durch unzählige Schlachten erworben hat. Dieses Tattoo fängt nicht nur einen ikonischen Moment ein, sondern erzählt auch die Geschichte eines Mannes, der durch Verlust, Pflicht und den Wunsch geformt wurde, die Seinen zu schützen.\n\nDer Tätowierer, inspiriert von der Verbindung zwischen dem Kunden und dieser Figur, arbeitete akribisch an jeder Linie und Schattierung, um die in Kakashis Händen enthaltene Energie erfolgreich zu vermitteln. Durch den hervorstechenden Einsatz von Rot wird die Energie des Chidori betont, während gleichzeitig eine persönliche Note hinzugefügt wird, die die Intensität der Technik mit den Emotionen des Trägers verbindet.`
  String get tattoo17_large_description {
    return Intl.message(
      'In den verborgenen Ländern, in denen sich Shinobi-Krieger in der Kunst der Unsichtbarkeit und Präzision trainieren, sticht ein Krieger durch seine Beherrschung der Blitzkraft hervor. Kakashi Hatake, bekannt als der \'Kopier-Ninja\', hat eine Technik perfektioniert, die so tödlich wie schön ist: das Chidori, oder \'Tausend Vögel\'. Diese Technik, die Blitzenergie in seiner Hand kanalisiert, ermöglicht es ihm, jedes Hindernis zu durchdringen, das sich ihm in den Weg stellt. Aber was nur wenige wissen, ist, dass jedes Mal, wenn er diese Kraft beschwört, es nicht nur eine Technik ist; es ist eine Erinnerung an sein Versprechen, diejenigen zu schützen, die er liebt, und eine Warnung an diejenigen, die es wagen, sich ihm zu stellen.\n\nDas Tattoo stellt Kakashi in dem genauen Moment dar, in dem die Kraft des Chidori zum Leben erwacht. Das Rot, das die Energie umgibt, symbolisiert nicht nur die Intensität der Kraft, sondern auch das Blut und die Emotionen, die den Weg dieses Kriegers geprägt haben. Kakashis intensiver Blick, eingerahmt von seinem Stirnband, spiegelt seinen unerschütterlichen Fokus und die Weisheit wider, die er durch unzählige Schlachten erworben hat. Dieses Tattoo fängt nicht nur einen ikonischen Moment ein, sondern erzählt auch die Geschichte eines Mannes, der durch Verlust, Pflicht und den Wunsch geformt wurde, die Seinen zu schützen.\n\nDer Tätowierer, inspiriert von der Verbindung zwischen dem Kunden und dieser Figur, arbeitete akribisch an jeder Linie und Schattierung, um die in Kakashis Händen enthaltene Energie erfolgreich zu vermitteln. Durch den hervorstechenden Einsatz von Rot wird die Energie des Chidori betont, während gleichzeitig eine persönliche Note hinzugefügt wird, die die Intensität der Technik mit den Emotionen des Trägers verbindet.',
      name: 'tattoo17_large_description',
      desc: '',
      args: [],
    );
  }

  /// `El Rostro del Destino`
  String get tattoo18_title {
    return Intl.message(
      'El Rostro del Destino',
      name: 'tattoo18_title',
      desc: '',
      args: [],
    );
  }

  /// `Este tatuaje representa a una diosa de piedra cuyos ojos ven el destino. El diseño simboliza la dualidad de la vida, con su rostro roto mostrando la lucha entre la luz y la oscuridad, mientras que el fuego rosa representa las pasiones que nos guían. Ideal para quienes enfrentan su destino con valentía.`
  String get tattoo18_short_description {
    return Intl.message(
      'Este tatuaje representa a una diosa de piedra cuyos ojos ven el destino. El diseño simboliza la dualidad de la vida, con su rostro roto mostrando la lucha entre la luz y la oscuridad, mientras que el fuego rosa representa las pasiones que nos guían. Ideal para quienes enfrentan su destino con valentía.',
      name: 'tattoo18_short_description',
      desc: '',
      args: [],
    );
  }

  /// `En un tiempo donde los dioses caminaban entre los mortales, existía una leyenda sobre una diosa de piedra, capaz de ver el destino de aquellos que la miraban a los ojos. Su mirada, oculta bajo una máscara rota, revelaba los caminos de la vida y la muerte, el amor y la traición, pero siempre a un costo. Los guerreros la buscaban en templos perdidos, con la esperanza de encontrar respuestas que ni los sabios podían ofrecer. Solo los más valientes, aquellos dispuestos a aceptar cualquier destino, podían sostener su mirada sin enloquecer.\n\nEste tatuaje es un homenaje a esa antigua diosa olvidada. Su rostro, partido en dos, simboliza la dualidad de la vida: la luz y la oscuridad, la creación y la destrucción. La sangre que fluye como fuego rosa a su alrededor representa las pasiones que guían nuestras decisiones, mientras que el fondo turquesa es un portal hacia lo desconocido, lo que aún está por descubrir en cada uno de nosotros. Es un tatuaje que no solo habla del destino, sino también de la valentía de enfrentar lo que está por venir, sin importar cuán incierto sea el futuro.\n\nEste diseño se realizó para una persona que, como la diosa, ha aprendido a abrazar tanto sus sombras como su luz interior. Las líneas fragmentadas simbolizan las cicatrices emocionales que nos hacen más fuertes, mientras que los ojos vacíos muestran la capacidad de ver más allá de lo obvio, buscando siempre la verdad que otros temen encontrar.`
  String get tattoo18_large_description {
    return Intl.message(
      'En un tiempo donde los dioses caminaban entre los mortales, existía una leyenda sobre una diosa de piedra, capaz de ver el destino de aquellos que la miraban a los ojos. Su mirada, oculta bajo una máscara rota, revelaba los caminos de la vida y la muerte, el amor y la traición, pero siempre a un costo. Los guerreros la buscaban en templos perdidos, con la esperanza de encontrar respuestas que ni los sabios podían ofrecer. Solo los más valientes, aquellos dispuestos a aceptar cualquier destino, podían sostener su mirada sin enloquecer.\n\nEste tatuaje es un homenaje a esa antigua diosa olvidada. Su rostro, partido en dos, simboliza la dualidad de la vida: la luz y la oscuridad, la creación y la destrucción. La sangre que fluye como fuego rosa a su alrededor representa las pasiones que guían nuestras decisiones, mientras que el fondo turquesa es un portal hacia lo desconocido, lo que aún está por descubrir en cada uno de nosotros. Es un tatuaje que no solo habla del destino, sino también de la valentía de enfrentar lo que está por venir, sin importar cuán incierto sea el futuro.\n\nEste diseño se realizó para una persona que, como la diosa, ha aprendido a abrazar tanto sus sombras como su luz interior. Las líneas fragmentadas simbolizan las cicatrices emocionales que nos hacen más fuertes, mientras que los ojos vacíos muestran la capacidad de ver más allá de lo obvio, buscando siempre la verdad que otros temen encontrar.',
      name: 'tattoo18_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Legendäre Sneaker`
  String get tattoo19_title {
    return Intl.message(
      'Der Legendäre Sneaker',
      name: 'tattoo19_title',
      desc: '',
      args: [],
    );
  }

  /// `Dieses Tattoo zeigt einen klassischen Air Jordan-Sneaker in violetten und schwarzen Tönen, der über der Haut mit violettem Schattierungen schwebt. Es ist eine Hommage an die Streetwear-Kultur und das ikonische Schuhwerk, das seit Generationen Trends und Stile geprägt hat.`
  String get tattoo19_short_description {
    return Intl.message(
      'Dieses Tattoo zeigt einen klassischen Air Jordan-Sneaker in violetten und schwarzen Tönen, der über der Haut mit violettem Schattierungen schwebt. Es ist eine Hommage an die Streetwear-Kultur und das ikonische Schuhwerk, das seit Generationen Trends und Stile geprägt hat.',
      name: 'tattoo19_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In der Welt der urbanen Mode gibt es nur wenige Dinge, die so ikonisch und universell sind wie ein gut ausgewähltes Paar Sneakers. Dieses Tattoo ehrt ein zeitloses Symbol: den klassischen Nike Air Jordan-Sneaker in einem stilisierten violetten und schwarzen Design. Für den Träger ist es nicht nur ein weiterer Sneaker. Dieses Modell repräsentiert eine Kombination aus Stil, Geschichte und Liebe zur Streetwear-Kultur und zum Basketball.\n\nDer Air Jordan-Sneaker, geboren aus der Zusammenarbeit zwischen Nike und Michael Jordan, hat Generationen überdauert und steht seit Jahrzehnten im Zentrum der urbanen Mode. Es ist nicht nur ein Symbol für sportliche Leistung, sondern auch für Rebellion, Selbstausdruck und für viele eine direkte Verbindung zu ihren Helden und glorreichen Momenten auf dem Spielfeld.\n\nDas Tattoo fängt die ikonischsten Details des Schuhs ein: die ineinander verflochtenen Schnürsenkel, das Nike-Logo an der Seite und die perfekte Kombination aus violetten, schwarzen und weißen Tönen, die ihm eine einzigartige Persönlichkeit verleihen. Der violette Schattierungseffekt verleiht Tiefe und gibt das Gefühl, dass der Sneaker 'schwebt', als ob er bereit wäre, in jede Richtung einen Schritt zu machen.\n\nFür den Besitzer dieses Tattoos ist das Design mehr als nur Dekoration; es ist eine Erinnerung an die Momente und Kulturen, die ihn geprägt haben, von Basketballspielen bis hin zur Leidenschaft für exklusive Sneakers.`
  String get tattoo19_large_description {
    return Intl.message(
      'In der Welt der urbanen Mode gibt es nur wenige Dinge, die so ikonisch und universell sind wie ein gut ausgewähltes Paar Sneakers. Dieses Tattoo ehrt ein zeitloses Symbol: den klassischen Nike Air Jordan-Sneaker in einem stilisierten violetten und schwarzen Design. Für den Träger ist es nicht nur ein weiterer Sneaker. Dieses Modell repräsentiert eine Kombination aus Stil, Geschichte und Liebe zur Streetwear-Kultur und zum Basketball.\n\nDer Air Jordan-Sneaker, geboren aus der Zusammenarbeit zwischen Nike und Michael Jordan, hat Generationen überdauert und steht seit Jahrzehnten im Zentrum der urbanen Mode. Es ist nicht nur ein Symbol für sportliche Leistung, sondern auch für Rebellion, Selbstausdruck und für viele eine direkte Verbindung zu ihren Helden und glorreichen Momenten auf dem Spielfeld.\n\nDas Tattoo fängt die ikonischsten Details des Schuhs ein: die ineinander verflochtenen Schnürsenkel, das Nike-Logo an der Seite und die perfekte Kombination aus violetten, schwarzen und weißen Tönen, die ihm eine einzigartige Persönlichkeit verleihen. Der violette Schattierungseffekt verleiht Tiefe und gibt das Gefühl, dass der Sneaker \'schwebt\', als ob er bereit wäre, in jede Richtung einen Schritt zu machen.\n\nFür den Besitzer dieses Tattoos ist das Design mehr als nur Dekoration; es ist eine Erinnerung an die Momente und Kulturen, die ihn geprägt haben, von Basketballspielen bis hin zur Leidenschaft für exklusive Sneakers.',
      name: 'tattoo19_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Der Wolf des Ewigen Mondes`
  String get tattoo20_title {
    return Intl.message(
      'Der Wolf des Ewigen Mondes',
      name: 'tattoo20_title',
      desc: '',
      args: [],
    );
  }

  /// `Das Tattoo des Wolfs des Ewigen Mondes repräsentiert den Wächter der Wälder und des Nachthimmels. Mit dem Vollmond im Hintergrund symbolisiert der Wolf Freiheit, Stärke und die Verbindung zur Natur und erinnert uns an die spirituelle Kraft der Wildnis.`
  String get tattoo20_short_description {
    return Intl.message(
      'Das Tattoo des Wolfs des Ewigen Mondes repräsentiert den Wächter der Wälder und des Nachthimmels. Mit dem Vollmond im Hintergrund symbolisiert der Wolf Freiheit, Stärke und die Verbindung zur Natur und erinnert uns an die spirituelle Kraft der Wildnis.',
      name: 'tattoo20_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In den Erzählungen der alten Völker, die die nördlichen Länder bewohnten, gab es den Glauben an den Wolf des Ewigen Mondes, eine Kreatur, die über den Nachthimmel und die wilden Ländereien herrschte. Dieser majestätische und einsame Wolf wurde im silbernen Licht des Vollmonds gesehen, wie er zu den Sternen heulte, als wäre jeder Ruf ein Gebet an die Geister des Waldes und der Berge.\n\nDer Legende nach war der Wolf des Ewigen Mondes der Wächter der geheimen Pfade, die nur die Geister betreten konnten. Sein Heulen war nicht nur eine Warnung für Eindringlinge, sondern auch ein Lied, das an das Gleichgewicht zwischen Natur und Mensch erinnerte. Es hieß, dass diejenigen, die seinen Ruf hören und seine Bedeutung verstehen konnten, zu einer großen spirituellen Reise bestimmt waren, die sie mit den ältesten Kräften der Erde verbinden würde.\n\nDas Tattoo fängt dieses mythische Wesen in seiner imposantesten Form ein, mit dem Vollmond, der hoch oben leuchtet und das Wesen des Wolfs widerspiegelt. Sein fester und selbstbewusster Blick, das präzise gezeichnete Fell und die Schatten des Waldes im Hintergrund schaffen eine Szene, die Stärke, Freiheit und tiefen Respekt für die Natur hervorruft. Die Landschaft aus Kiefern und Wasserfällen am Fuße des Tattoos fügt ein Gefühl von Weite und Verbindung mit der Wildnis hinzu.\n\nDieses Tattoo ist perfekt für diejenigen, die eine Affinität zu wilden Tieren, dem Mond und den ewigen Zyklen der Natur empfinden. Das Tragen dieses Bildes ist eine Erklärung von Unabhängigkeit, innerer Stärke und tiefer Verbundenheit mit der Welt um uns herum.`
  String get tattoo20_large_description {
    return Intl.message(
      'In den Erzählungen der alten Völker, die die nördlichen Länder bewohnten, gab es den Glauben an den Wolf des Ewigen Mondes, eine Kreatur, die über den Nachthimmel und die wilden Ländereien herrschte. Dieser majestätische und einsame Wolf wurde im silbernen Licht des Vollmonds gesehen, wie er zu den Sternen heulte, als wäre jeder Ruf ein Gebet an die Geister des Waldes und der Berge.\n\nDer Legende nach war der Wolf des Ewigen Mondes der Wächter der geheimen Pfade, die nur die Geister betreten konnten. Sein Heulen war nicht nur eine Warnung für Eindringlinge, sondern auch ein Lied, das an das Gleichgewicht zwischen Natur und Mensch erinnerte. Es hieß, dass diejenigen, die seinen Ruf hören und seine Bedeutung verstehen konnten, zu einer großen spirituellen Reise bestimmt waren, die sie mit den ältesten Kräften der Erde verbinden würde.\n\nDas Tattoo fängt dieses mythische Wesen in seiner imposantesten Form ein, mit dem Vollmond, der hoch oben leuchtet und das Wesen des Wolfs widerspiegelt. Sein fester und selbstbewusster Blick, das präzise gezeichnete Fell und die Schatten des Waldes im Hintergrund schaffen eine Szene, die Stärke, Freiheit und tiefen Respekt für die Natur hervorruft. Die Landschaft aus Kiefern und Wasserfällen am Fuße des Tattoos fügt ein Gefühl von Weite und Verbindung mit der Wildnis hinzu.\n\nDieses Tattoo ist perfekt für diejenigen, die eine Affinität zu wilden Tieren, dem Mond und den ewigen Zyklen der Natur empfinden. Das Tragen dieses Bildes ist eine Erklärung von Unabhängigkeit, innerer Stärke und tiefer Verbundenheit mit der Welt um uns herum.',
      name: 'tattoo20_large_description',
      desc: '',
      args: [],
    );
  }

  /// `Das Kreuz der Ewigen Rosen`
  String get tattoo21_title {
    return Intl.message(
      'Das Kreuz der Ewigen Rosen',
      name: 'tattoo21_title',
      desc: '',
      args: [],
    );
  }

  /// `Das Tattoo des Kreuzes mit Rosen repräsentiert die Vereinigung zwischen dem Göttlichen und dem Irdischen. Die Rosen symbolisieren ewige Liebe und unvergängliche Erinnerungen, während das Kreuz Glaube, Opfer und Hoffnung widerspiegelt. Ein kraftvolles Symbol für Schutz und spirituelle Verbundenheit.`
  String get tattoo21_short_description {
    return Intl.message(
      'Das Tattoo des Kreuzes mit Rosen repräsentiert die Vereinigung zwischen dem Göttlichen und dem Irdischen. Die Rosen symbolisieren ewige Liebe und unvergängliche Erinnerungen, während das Kreuz Glaube, Opfer und Hoffnung widerspiegelt. Ein kraftvolles Symbol für Schutz und spirituelle Verbundenheit.',
      name: 'tattoo21_short_description',
      desc: '',
      args: [],
    );
  }

  /// `In einem alten himmlischen Garten, verborgen vor sterblichen Augen, wachsen Rosen, die niemals welken. Diese Blumen, strahlend in ihrer zarten Schönheit, tragen in ihren Blütenblättern die Flüstern verlorener Seelen und die Gebete derer, die Trost suchen. In der Mitte dieses Gartens erhebt sich ein leuchtendes Kreuz, das das Gleichgewicht zwischen der Zerbrechlichkeit des Lebens und der Stärke des Glaubens symbolisiert.\n\nJede Rose in diesem Garten erblüht, wenn jemand inneren Frieden findet, wenn ein Leben durch Glauben oder Überwindung das Göttliche berührt. Das Kreuz in diesem Tattoo repräsentiert diese ewige Verbindung zwischen dem Irdischen und dem Himmlischen, ein Symbol für Schutz, Opfer und Hoffnung. Die Rosen, sorgfältig um das Kreuz arrangiert, sind Symbole der Liebe und Erinnerung, Blumen, die nie sterben werden, so wie die Erinnerungen an geliebte Menschen, die nicht mehr hier sind, aber in den Herzen derer leben, die sie ehren.\n\nDieses Tattoo vereint zwei kraftvolle Symbole: das Kreuz als spirituellen Führer und die Rosen als Darstellung ewiger Liebe und Reinheit der Seele. Der Träger trägt eine ständige Erinnerung an die Schönheit, die auch in den dunkelsten Momenten existiert, und an die Stärke, die im Glauben zu finden ist. Das Design ist eine Erklärung von Spiritualität, Widerstandsfähigkeit und tiefem Respekt vor dem Heiligen.`
  String get tattoo21_large_description {
    return Intl.message(
      'In einem alten himmlischen Garten, verborgen vor sterblichen Augen, wachsen Rosen, die niemals welken. Diese Blumen, strahlend in ihrer zarten Schönheit, tragen in ihren Blütenblättern die Flüstern verlorener Seelen und die Gebete derer, die Trost suchen. In der Mitte dieses Gartens erhebt sich ein leuchtendes Kreuz, das das Gleichgewicht zwischen der Zerbrechlichkeit des Lebens und der Stärke des Glaubens symbolisiert.\n\nJede Rose in diesem Garten erblüht, wenn jemand inneren Frieden findet, wenn ein Leben durch Glauben oder Überwindung das Göttliche berührt. Das Kreuz in diesem Tattoo repräsentiert diese ewige Verbindung zwischen dem Irdischen und dem Himmlischen, ein Symbol für Schutz, Opfer und Hoffnung. Die Rosen, sorgfältig um das Kreuz arrangiert, sind Symbole der Liebe und Erinnerung, Blumen, die nie sterben werden, so wie die Erinnerungen an geliebte Menschen, die nicht mehr hier sind, aber in den Herzen derer leben, die sie ehren.\n\nDieses Tattoo vereint zwei kraftvolle Symbole: das Kreuz als spirituellen Führer und die Rosen als Darstellung ewiger Liebe und Reinheit der Seele. Der Träger trägt eine ständige Erinnerung an die Schönheit, die auch in den dunkelsten Momenten existiert, und an die Stärke, die im Glauben zu finden ist. Das Design ist eine Erklärung von Spiritualität, Widerstandsfähigkeit und tiefem Respekt vor dem Heiligen.',
      name: 'tattoo21_large_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
