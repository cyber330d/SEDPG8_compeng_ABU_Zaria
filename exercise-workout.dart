class Exercise {
  final String id;
  final String name;
  final String muscleGroup;

  Exercise({
    required this.id,
    required this.name,
    required this.muscleGroup,
  });
}

class Workout {
  final String id;
  final String name;
  final String description;
  final List<Exercise> exercises;

  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.exercises,
  });
}
