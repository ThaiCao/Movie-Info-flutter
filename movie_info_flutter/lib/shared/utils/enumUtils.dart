enum MovieType{
  popular,
  upcoming,
  topRated
}

extension MovieTypeEx on MovieType{
  String get value{
    switch (this){
      case MovieType.popular:
        return "popular";
      case MovieType.topRated:
        return "top_rated";
      case MovieType.upcoming:
        return "upcoming";
    }
  }
}
