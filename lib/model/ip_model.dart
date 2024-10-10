import 'package:flutter/material.dart';
import '../services/api_service.dart';

class IpModel extends ChangeNotifier {
  String _response = '';
  bool _isLoading = false;
  String _error = '';

  String get response => _response;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> FetchData(String ip) async {
    _isLoading = true;
    _error = '';
    notifyListeners();
  }

  void GetReq(String s) {}
}
