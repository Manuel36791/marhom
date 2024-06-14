import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/shared/widgets/network_image_error.dart';
import '../../../../../core/shared/widgets/network_image_progressor.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';

class SliderContainer extends StatelessWidget {
  final String image;
  const SliderContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.r12),
      child: CachedNetworkImage(
        imageUrl:
        "${AppConstants.imageUrl}$image",
        height: 130.h,
        width: context.queryWidth.w,
        fit: BoxFit.cover,
        progressIndicatorBuilder:
            (context, url, downloadProgress) =>
            NetworkImageProgress(
                downloadProgress:
                downloadProgress),
        errorWidget: (context, url, error) =>
        const NetworkImageError(),
      ),
    );
  }
}
