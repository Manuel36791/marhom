import 'package:flutter_svg/flutter_svg.dart';

const String imagePath = "assets/images";
const String svgPath = "assets/svg";

class AppImages {
  //? PNG Paths
  static String placeholderImg = "https://picsum.photos/200";
  // static String placeholder200 = "https://placehold.co/200";
  static String placeholder = "https://via.placeholder.com/";
  static String bgImg = "$imagePath/background.jpg";

  //? SVG Paths
  static String wifiSvg = "$svgPath/wifi.svg";
  static String leafSvg = "$svgPath/leaf.svg";
  static String snapchatLogoSvg = "$svgPath/snapchat_logo.svg";
}

Future<void> svgPreloader() async {
  await preloadSVGs([
    AppImages.wifiSvg,
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

