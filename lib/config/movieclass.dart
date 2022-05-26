class Movie {
  final String name;
  final String rate;
  final String genre;
  final String time;
  final String poster;
  Movie(
      {required this.name,
      required this.rate,
      required this.genre,
      required this.time,
      required this.poster});

  static Movie fromJson(json) => Movie(
      name: json['name'],
      rate: json['rate'],
      genre: json['genre'],
      time: json['time'],
      poster: json['poster']);
}

class UpcomingMovie {
  final String releaseDate;
  final String poster;
  UpcomingMovie({required this.releaseDate, required this.poster});

  static UpcomingMovie fromJson(json) =>
      UpcomingMovie(releaseDate: json['releaseState'], poster: json['poster']);
}
