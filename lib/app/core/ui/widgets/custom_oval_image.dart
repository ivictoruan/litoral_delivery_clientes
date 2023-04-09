import 'package:flutter/material.dart';

class CustomOvalImage extends StatelessWidget {
  final String imagePathUrl;
  final bool isLocalImage;

  const CustomOvalImage({
    super.key,
    required this.imagePathUrl,
    this.isLocalImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      constraints: const BoxConstraints(maxWidth: 100),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: isLocalImage
              ? AssetImage(imagePathUrl) as ImageProvider<Object>
              : NetworkImage(
                  imagePathUrl,
                ),
        ),
        border: Border.all(
          width: 2,
          color: Colors.grey[500]!,
        ),
      ),
    );
  }
}
