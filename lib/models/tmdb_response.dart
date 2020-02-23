import 'movie.dart';

class TmdbResponse {
  int page;
  int totalResults;
  int totalPages;
  List<Movie> results  = new List();


  TmdbResponse.fromJson(Map<String, dynamic> parsedJson) {
    page = parsedJson['page'];
    totalResults = parsedJson['total_results'];
    totalPages = parsedJson['total_pages'];

    List<dynamic> movies = parsedJson['results'];
    movies.forEach((movie){
      results.add(Movie.fromJson(movie));
    });
  }

}


