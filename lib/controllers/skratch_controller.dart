// // lib/app/controllers/sketch_controller.dart
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:scratchify/models/scratch_model.dart';

// class SketchController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//   final descriptionController = TextEditingController();
//   final isLoading = false.obs;
//   final sketches = <SketchModel>[].obs;
//   final currentDescription = ''.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     // Load saved sketches if any
//     loadSketches();
//   }

//   @override
//   void onClose() {
//     descriptionController.dispose();
//     super.onClose();
//   }

//   void loadSketches() {
//     // TODO: Implement loading from local storage or API
//   }

//   Future<void> saveSketch() async {
//     if (!formKey.currentState!.validate()) return;

//     try {
//       isLoading.value = true;

//       // Create new sketch
//       final sketch = SketchModel(
//         description: descriptionController.text,
//       );

//       // Add to list
//       sketches.add(sketch);

//       // Clear form
//       descriptionController.clear();
//       currentDescription.value = '';

//       Get.snackbar(
//         'Success',
//         'Sketch description saved successfully!',
//         backgroundColor: Colors.green.shade50,
//         colorText: Colors.green.shade900,
//         snackPosition: SnackPosition.TOP,
//         duration: const Duration(seconds: 2),
//         margin: const EdgeInsets.all(10),
//       );

//       // Navigate to list view
//       Get.toNamed('/sketches');
//     } catch (e) {
//       Get.snackbar(
//         'Error',
//         'Failed to save sketch description',
//         backgroundColor: Colors.red.shade50,
//         colorText: Colors.red.shade900,
//         snackPosition: SnackPosition.TOP,
//       );
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
