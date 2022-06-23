import 'package:http/http.dart ';
import 'dart:convert';

class NetWorkHelper {
  final String url;

  NetWorkHelper({required this.url});

  Future getData() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
      
    } else {
      print(response.statusCode);
      print(response.body);
    }
  }
}
