import 'storage.dart';
import 'dart:html';

class SessionStorage implements Storage {
  @override
  void setData(String key, String value) => window.sessionStorage[key] = value;

  @override
  String getData(String key) => window.sessionStorage[key] ?? '';

  @override
  void clean() => window.sessionStorage.clear();
}
