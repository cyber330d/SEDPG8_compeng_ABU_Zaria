class UserWorkout {
  String id;
  String userId;
  String workoutId;
  DateTime date;

  UserWorkout({this.id, this.userId, this.workoutId, this.date});

  factory UserWorkout.fromJson(Map<String, dynamic> json) => UserWorkout(
        id: json['id'],
        userId: json['userId'],
        workoutId: json['workoutId'],
        date: DateTime.parse(json['date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'workoutId': workoutId,
        'date': date.toIso8601String(),
      };
}
