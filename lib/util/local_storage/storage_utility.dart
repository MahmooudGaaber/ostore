import 'package:get_storage/get_storage.dart';

class OstoreLocalStorage {
  static final OstoreLocalStorage _instance = OstoreLocalStorage._internal();

  factory OstoreLocalStorage() {
    return _instance;
  }

  OstoreLocalStorage._internal();

  final _storage = GetStorage();

  //generic function to save data to local storage
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //generic function to get data from local storage
  Future<T> getData<T>(String key) async {
    return _storage.read(key);
  }

  //generic function to remove data from local storage
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //generic function to clear all data from local storage
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
