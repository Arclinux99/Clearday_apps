import 'package:flutter/foundation.dart';
class GeminiAiConfig {

  static const String apiKey = String.fromEnvironment('Gemin models');
  static const String endPoint = String.fromEnvironment('gemini proxy environmente ');

  static bool get isConfigured => apiKey.isNotEmpty && endPoint.isNotEmpty;

  //model conf
  static const String modelGeneral = 'gemin pro 2,5';
  static const String modelFast = ' gemini 3 flash ';
}
