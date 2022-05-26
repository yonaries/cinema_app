import 'dart:convert';
import '../models/comingsoon.dart';
import 'package:http/http.dart' as http;

Future<List<Item>> getUpcomings() async {
  final client = http.Client();
  final url = Uri.parse('https://imdb-api.com/en/API/comingsoon/k_l7n4b0k5');
  final response = await client.get(url);

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    Iterable result = jsonData["items"];
    return result.map((element) => Item.fromJson(element)).toList();
  } else {
    throw Exception("Failed to load Movies");
  }
}
