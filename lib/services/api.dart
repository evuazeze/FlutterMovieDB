import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/tmdb_response.dart';

class Api {
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const key = "9e0982049abeb11ad0ee8ef74a3e8ea0";

  Future<TmdbResponse> inTheatres() async{
    var client = new http.Client();

    try{
      var url = baseUrl +'discover/movie?'+
          'primary_release_date.gte=2014-09-15&primary_release_date.lte=2014-10-22&api_key='+key;
      final response = await client.get(url);
      if (response.statusCode == 200) {
        client.close();
        print(response.body.toString());
        return TmdbResponse.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load balance.');
      }
    } catch(e) {
      print(e);
    }
  }
}