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

  Future<void> deleteToken() async {
    await storage.delete(key: 'token');
    notifyListeners();
  }

  Future<void> writeSid(String sid) async {
    await storage.write(key: 'session-id', value: sid);
  }

  Future<String?> readSessionId() async {
    String? sid = await storage.read(key: 'session-id');
    notifyListeners();

    return sid;
  }
}
