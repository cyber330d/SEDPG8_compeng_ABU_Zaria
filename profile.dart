class User {
  String userId;
  String name;
  String email;
  String password;
  int age;
  String gender;
  double weight;
  double height;
  String fitnessGoals;
  String fitnessLevel;
  Map <String, double> bodyMeasurements;
  List <String> medicalConditions;
  List <Workout> workoutHistory;
  
  User({
    this.userId,
    this.name,
    this.email,
    this.password,
    this.age,
    this.gender,
    this.weight,
    this.height,
    this.fitnessGoals,
    this.fitnessLevel,
    this.bodyMeasurements,
    this.medicalConditions,
    this.workoutHistory,
  });
}
