import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecurestorageService {
  final storage = const FlutterSecureStorage();

  Future<void> writeToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> readToken() async {
    final savedToken = await storage.read(key: 'token');
    return savedToken;
  }

  Future<void> deleteTojen() async {
    await storage.delete(key: 'token');
  }
}
