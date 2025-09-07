import 'package:flutter_dotenv/flutter_dotenv.dart';

class API {
  static final baseURL = dotenv.env['BASE_URL']!;
}
