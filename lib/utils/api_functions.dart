import 'dart:async';
import 'dart:convert';
import 'dart:io' as Io;

import 'package:http/http.dart' as http;

const baseUrl = 'https://swapi.co';

class ApiRequests {

  Future fetchAllMovies() async {
    var url = baseUrl + '/api/films/';
    var response;

    try {
      response = await http.get(url).timeout(new Duration(seconds: 15));
    } on Io.SocketException catch (_) {
      print('Not connected. Failed to fetch all movies');
      throw Exception('Not connected. Failed to fetch all movies');
    }

    if(response.statusCode == 200){
      return json.decode(response.body)['results'];
    }
    else{
      throw Exception('Something went wrong');
    }
  }

}