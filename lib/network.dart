import 'dart:convert';
import './appid.dart';
import './data.dart';
import 'package:http/http.dart';

class Network {
  Future<Moviedb> getMovie() async {
    var finalUrl = "https://www.omdbapi.com/?i=tt3896198&apikey=" + Util.appId;
    final response = await get(Uri.parse(Uri.encodeFull(finalUrl)));
    print("URL: ${Uri.encodeFull(finalUrl)}");

    if (response.statusCode == 200) {
      return Moviedb.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error getting movie Database");
    }
  }
}
