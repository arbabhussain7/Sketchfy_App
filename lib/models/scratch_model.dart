// // lib/app/models/sketch_model.dart
// class SketchModel {
//   final String description;
//   final DateTime createdAt;

//   SketchModel({required this.description, DateTime? createdAt})
//       : createdAt = createdAt ?? DateTime.now(); // Set default value here

//   Map<String, dynamic> toJson() => {
//         'description': description,
//         'createdAt': createdAt.toIso8601String(),
//       };

//   factory SketchModel.fromJson(Map<String, dynamic> json) => SketchModel(
//         description: json['description'],
//         createdAt: DateTime.parse(json['createdAt']),
//       );
// }
