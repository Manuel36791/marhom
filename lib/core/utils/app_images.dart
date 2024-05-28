import 'package:flutter_svg/flutter_svg.dart';

const String imagePath = "assets/images";
const String svgPath = "assets/svg";

class AppImages {
  //? PNG Paths
  static String placeholderImg = "https://picsum.photos/";
  // static String placeholder200 = "https://placehold.co/200";
  static String placeholder = "https://via.placeholder.com/";
  static String bgImg = "$imagePath/background.jpg";

  //? SVG Paths
  static String wifiSvg = "$svgPath/wifi.svg";
  static String leafSvg = "$svgPath/leaf.svg";
  static String snapchatLogoSvg = "$svgPath/snapchat_logo.svg";
  static String whatsappLogoSvg = "$svgPath/whatsapp_logo.svg";
  static String homeActiveSvg = "$svgPath/home_active.svg";
  static String homeInactiveSvg = "$svgPath/home_inactive.svg";
  static String profileActiveSvg = "$svgPath/profile_active.svg";
  static String profileInactiveSvg = "$svgPath/profile_inactive.svg";
  static String sunSvg = "$svgPath/sun.svg";
  static String notificationSvg = "$svgPath/notifications.svg";
  static String drawerSvg = "$svgPath/drawer.svg";
}

Future<void> svgPreloader() async {
  await preloadSVGs([
    AppImages.wifiSvg,
    AppImages.leafSvg,
    AppImages.snapchatLogoSvg,
    AppImages.whatsappLogoSvg,
    AppImages.homeActiveSvg,
    AppImages.homeInactiveSvg,
    AppImages.profileActiveSvg,
    AppImages.profileInactiveSvg,
    AppImages.sunSvg,
    AppImages.notificationSvg,
    AppImages.drawerSvg,
  ]);
}

Future<void> preloadSVGs(List<String> assetPaths) async {
  for (final path in assetPaths) {
    final loader = SvgAssetLoader(path);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}
