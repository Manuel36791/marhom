import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class NetworkImageProgress extends StatelessWidget {
  final DownloadProgress downloadProgress;

  const NetworkImageProgress({super.key, required this.downloadProgress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryGold,
        value: downloadProgress.progress,
      ),
    );
  }
}
