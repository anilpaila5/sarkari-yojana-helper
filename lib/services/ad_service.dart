import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Google's official TEST ad unit IDs. Replace with real AdMob IDs
/// (from the AdMob console, linked to app id com.sarkariyojahelper.app)
/// before publishing to any store.
const String kAdMobAppIdAndroid = 'ca-app-pub-3940256099942544~3347511713';
const String kBannerAdUnitIdAndroid = 'ca-app-pub-3940256099942544/6300978111';

bool get adsSupported {
  if (kIsWeb) return false;
  return defaultTargetPlatform == TargetPlatform.android;
}

bool _initStarted = false;

/// Idempotent, never-throwing initialization.
Future<void> initAds() async {
  if (!adsSupported || _initStarted) return;
  _initStarted = true;
  try {
    await MobileAds.instance.initialize();
  } catch (_) {
    // Ads are optional; the app must work without them.
  }
}

class AdBanner extends StatefulWidget {
  const AdBanner({super.key});

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  BannerAd? _banner;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _setupBanner();
  }

  Future<void> _setupBanner() async {
    await initAds();
    if (!adsSupported || !mounted) return;
    final banner = BannerAd(
      adUnitId: kBannerAdUnitIdAndroid,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, error) => ad.dispose(),
      ),
    );
    try {
      await banner.load();
      if (mounted) {
        setState(() => _banner = banner);
      } else {
        banner.dispose();
      }
    } catch (_) {
      banner.dispose();
    }
  }

  @override
  void dispose() {
    _banner?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final banner = _banner;
    if (!_loaded || banner == null) return const SizedBox.shrink();
    return SafeArea(
      top: false,
      child: SizedBox(
        width: banner.size.width.toDouble(),
        height: banner.size.height.toDouble(),
        child: AdWidget(ad: banner),
      ),
    );
  }
}
