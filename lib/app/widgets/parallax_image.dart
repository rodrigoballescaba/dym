import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:tattoos/app/resources/app_colors.dart';

class ParallaxImage extends StatelessWidget {
  final String imagePath;
  final double height;

  const ParallaxImage({
    required this.imagePath,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageRenderer(
      alt: 'Image of Javi Tattoos in the studio making a tattoo',
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: AppColors.black.withOpacity(.5),
        ),
      ),
    );
  }
}
