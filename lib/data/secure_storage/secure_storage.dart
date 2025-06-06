import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage secureStorage=const FlutterSecureStorage();

  //save a value in secure storage
  Future<void> writeSecureStorage(String key, String value) async {
    await secureStorage.write(key: key, value: value);
  }

  // Read a value from secure storage
  Future<String?> readSecureStorage(String key) async {
    return await secureStorage.read(key: key);
  }

  // // Delete a value from secure storage
  Future<void> delete(String key) async {
    await secureStorage.delete(key: key);
  }

}