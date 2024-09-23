import 'dart:convert';  // To use jsonDecode
import 'package:http/http.dart' as http;

void main() {
  fetchData();
}

fetchData() async {
  var url = Uri.parse('http://127.0.0.1:5000/getUser');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    // Print the data or process it as needed
    // data.forEach((post) {
    //   print('Title: ${post['title']}');
    // });
    return data;
  } else {
    print('Failed to load data: ${response.statusCode}');
  }
}
