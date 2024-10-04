import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/data/services/controller.dart';
import 'package:tattoos/generated/assets.gen.dart';
import 'package:tattoos/generated/l10n.dart';

class MenuBurger extends StatelessWidget {
  final Controller _controller = Get.find();

  MenuBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: AppColors.black.withOpacity(.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Image.asset(
              color: AppColors.black.withOpacity(.5),
              filterQuality: FilterQuality.high,
              colorBlendMode: BlendMode.darken,
              Assets.images.imageMenu.path,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                menuItem(
                  0,
                  Icons.catching_pokemon_rounded,
                  S.current.menu_home,
                  AppConstants.routeHome,
                  context,
                ),
                /*menuItem(
                  1,
                  Icons.group_rounded,
                  S.current.menu_login,
                  AppConstants.routeLogin,
                  context,
                ),*/
                menuItem(
                  1,
                  Icons.perm_media_rounded,
                  S.current.menu_gallery,
                  AppConstants.routeGallery,
                  context,
                ),
                /*menuItem(
                  3,
                  Icons.mode_standby_rounded,
                  S.current.menu_roulette,
                  _controller.haveAuth.value
                      ? AppConstants.routeRoulette
                      : AppConstants.routeLogin,
                  context,
                ),
                menuItem(
                  4,
                  Icons.star_rounded,
                  S.current.menu_points,
                  _controller.haveAuth.value
                      ? AppConstants.routePoints
                      : AppConstants.routeLogin,
                  context,
                ),*/
                menuItem(
                  2,
                  Icons.contact_mail_rounded,
                  S.current.menu_contact,
                  AppConstants.routeContact,
                  context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(
    int index,
    IconData icon,
    String text,
    String route,
    BuildContext context,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: _controller.indexMenu.value == index
            ? AppColors.red
            : AppColors.white,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: () async {
        await context.push(route);
      },
    );
  }
}
