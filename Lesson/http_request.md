### Install package

```dart
dependencies:http: ^
0.13
.5
```

### Get Method

```dart
// import http package
import 'package:http/http.dart' as http;


void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  // make http get request
  var response = await http.get(url);
  // check the status code for the result  
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
```

### Post Method

```dart
// import http package
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  // make http post request
  var response = await http.post(url, body: {'title': 'foo', 'body': 'bar', 'userId': '1'});
  // check the status code for the result  
  if (response.statusCode == 201) {
    print(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
```
