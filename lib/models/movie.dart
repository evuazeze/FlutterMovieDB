class Movie{
  num popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  num voteAverage;
  String overview;
  String releaseDate;

  Movie();

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    popularity = parsedJson['popularity'];
    voteCount = parsedJson['vote_count'];
    video = parsedJson['video'];
    posterPath = parsedJson['poster_path'];
    id = parsedJson['id'];
    adult = parsedJson['adult'];
    backdropPath = parsedJson['backdrop_path'];
    originalLanguage = parsedJson['original_language'];
    originalTitle = parsedJson['original_title'];
    title = parsedJson['title'];
    voteAverage = parsedJson['vote_average'];
    overview = parsedJson['overview'];
    releaseDate = parsedJson['release_date'];
    genreIds = parsedJson['genre_ids'];
  }
}