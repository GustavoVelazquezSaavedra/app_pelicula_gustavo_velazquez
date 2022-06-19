import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/now_playing_response.dart';

class MoviesProviders extends ChangeNotifier {
  //crear las variables para usar con el http

  String _Apikey = 'd75dcc86039ee63a6397f097d433f6f1';
  String _Baseurl = 'api.themoviedb.org';
  String _Language = 'es-Es';
  //crear este lista para mostrar las imagenes
  MoviesProviders() {
    print('coriendo');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_Baseurl, '3/movie/now_playing',
        {'api_key': _Apikey, 'Language': _Language, 'Page': '1'});
    // Await the http get response, the decode ythe json to a dart object.

    final response = await http.get(url);

    final nowPlayinResponse = Nowplayingresponse.fromJson(response.body);

    print(Nowplayingresponse.results[1].title);

    Ondisplaymovie = Nowplayingresponse.result;

    notifyListeners();
  }
}
