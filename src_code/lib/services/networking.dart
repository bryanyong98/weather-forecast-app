import 'package:http/http.dart' as http;
import 'dart:convert';

///Network Helper is a class that accepts a URL input and retrieve the actual data as an output.
class NetworkHelper {
  NetworkHelper(this.url);

  final String url ;
  Future getData() async{
    http.Response response = await http.get(url);

    if (response.statusCode == 200){
      String data = response.body;

      return jsonDecode(data);

    } else {
      print(response.statusCode);
    }
  }
}