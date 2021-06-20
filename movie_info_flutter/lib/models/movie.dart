class Movie{
  final int? id;
  final String? title;
  final int? voteCount;
  final bool? video;
  final String? voteAverage;
  final double? popularity;
  final String? posterPath;
  final String? originalLanguage;
  final String? originalTitle;
  final List<int>? genreIds;
  final String? backdropPath;
  final bool? adult;
  final String? overview;
  final String? releaseDate;

  Movie({
      this.id,
      this.title,
      this.voteCount,
      this.video,
      this.voteAverage,
      this.popularity,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.releaseDate});

  factory Movie.dataFromResponse(result){
    return Movie(
      id: result['id'],
      title: result['title'],
      voteCount: result['vote_count'],
      video: result['video'],
      voteAverage: result['vote_average'],
      popularity: result['popularity'],
      posterPath: result['poster_path'],
      originalLanguage: result['original_language'],
      originalTitle: result['original_title'],
      genreIds: result['genre_ids'],
      backdropPath: result['backdrop_path'],
      adult: result['adult'],
      overview: result['overview'],
      releaseDate: result['release_date']
    );
  }
}
