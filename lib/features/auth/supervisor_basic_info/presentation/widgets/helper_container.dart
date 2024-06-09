import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/shared/widgets/network_image_error.dart';
import '../../../../../core/shared/widgets/network_image_progressor.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';

class HelperContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String helperAvatar;
  final String helperSnapchat;
  final String helperPhone;
  final Map selectedHelpers;
  final num helperId;

  const HelperContainer({
    super.key,
    required this.onTap,
    required this.helperAvatar,
    required this.helperSnapchat,
    required this.helperPhone,
    required this.selectedHelpers,
    required this.helperId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.p8),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.r12),
            child: CachedNetworkImage(
              imageUrl: "${AppConstants.imageUrl}$helperAvatar",
              fit: BoxFit.contain,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  NetworkImageProgress(downloadProgress: downloadProgress),
              errorWidget: (context, url, error) => const NetworkImageError(),
            ),
          ),
          title: Text(helperSnapchat),
          subtitle: Text(helperPhone),
          trailing: selectedHelpers.containsValue(helperId)
              ? Icon(
                  MdiIcons.checkCircle,
                  color: AppColors.successGreen,
                )
              : const SizedBox.shrink(),
          tileColor: AppColors.tertiaryBeige,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Dimensions.r12,
            ),
          ),
        ),
      ),
    );
  }
}
