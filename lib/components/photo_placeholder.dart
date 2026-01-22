import 'package:flutter/material.dart';
import 'package:clearday/theme.dart';

class PhotoPlaceholder extends StatelessWidget {
  final String? imagePath;
  final VoidCallback? onTap;
  final bool isCompact;

  const PhotoPlaceholder({
    super.key,
    this.imagePath,
    required this.onTap,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
    );
  }
}
