import 'package:local_auth/local_auth.dart';

class BiometricServices {
  static final auth = LocalAuthentication();

  static Future<bool> doAuthenticate() async =>
      await auth.canCheckBiometrics || await auth.isDeviceSupported();

  static Future<bool> authentification() async {
    try {
      if (!await doAuthenticate()) {
        return false;
      }
      return await auth.authenticate(
          localizedReason: 'Please authenticate to show account balance',
          options: const AuthenticationOptions(biometricOnly: true));
    } catch (e) {
      print(e);
    }
    return false;
  }
}
