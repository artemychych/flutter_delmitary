
import 'dart:convert';

List<dynamic> decodeJsonFromResponseBytes(List<int> responseBytes) {
  return jsonDecode(utf8.decode(responseBytes)).cast<Map<String, dynamic>>();
}
