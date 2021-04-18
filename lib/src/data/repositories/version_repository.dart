import 'package:package_info_plus/package_info_plus.dart';

class VersionRepository {
  PackageInfo? _packageInfo;

  Future<String> getVersion() async {
    _packageInfo ??= await PackageInfo.fromPlatform();
    return _packageInfo!.version;
  }
}
