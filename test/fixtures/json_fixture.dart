import 'dart:convert';
import 'dart:io';

dynamic loadJsonFixture(String name) {
  final file = File('./test/fixtures/json/$name.json');
  return json.decode(file.readAsStringSync());
}
