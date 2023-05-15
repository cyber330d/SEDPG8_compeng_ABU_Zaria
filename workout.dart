class Workout {
  final String id;
  final String name;
  final String description;
  final String imageURL;
  final List<String> equipment;
  final List<String> muscleGroups;
  final List<Exercise> exercises;
  final int duration;
  final int caloriesBurned;

  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.imageURL,
    required this.equipment,
    required this.muscleGroups,
    required this.exercises,
    required this.duration,
    required this.caloriesBurned,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    List<dynamic> exercisesJson = json['exercises'];
    List<Exercise> exercises = exercisesJson.map((e) => Exercise.fromJson(e)).toList();

    return Workout(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageURL: json['imageURL'],
      equipment: List<String>.from(json['equipment']),
      muscleGroups: List<String>.from(json['muscleGroups']),
      exercises: exercises,
      duration: json['duration'],
      caloriesBurned: json['caloriesBurned'],
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> exercisesJson = exercises.map((e) => e.toJson()).toList();

    return {
      'id': id,
      'name': name,
      'description': description,
      'imageURL': imageURL,
      'equipment': equipment,
      'muscleGroups': muscleGroups,
      'exercises': exercisesJson,
      'duration': duration,
      'caloriesBurned': caloriesBurned,
      'done':removethis,
    };
  }
}
