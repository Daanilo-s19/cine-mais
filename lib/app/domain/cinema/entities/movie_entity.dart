enum CategoryType { ACTION, COMEDY, TERROR, SUSPENSE }

class MovieEntity {
  final String title;
  final String director;
  final String mainActor;
  final String age;
  final CategoryType category;
  final double duration;

  MovieEntity({
    this.title,
    this.director,
    this.mainActor,
    this.age,
    this.category,
    this.duration,
  });
}
