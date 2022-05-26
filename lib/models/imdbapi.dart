import 'package:http/http.dart' as http;

void imdb() {
  final url =
      Uri.parse('https://imdb-api.com/en/API/title/k_kshnj5td/tt9419884');
  void getData() async {
    http.Response response = await http.get(url);
    print(response.body);
  }

  getData();
}
