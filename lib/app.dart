

import 'package:elearning/core/network/network_service.dart';
import 'package:flutter/material.dart';

class InitApp{
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Network.initializeInterceptors();
  }
}