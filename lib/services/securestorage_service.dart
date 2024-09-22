import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked.dart';

class SecurestorageService extends BaseViewModel {
  final storage = const FlutterSecureStorage();

  Future<void> writeToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> readToken() async {
    String? savedToken = await storage.read(key: 'token');
    notifyListeners();

    return savedToken;
  }

  Future<void> deleteTojen() async {
    await storage.delete(key: 'token');
    notifyListeners();
  }
}
