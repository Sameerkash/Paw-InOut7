import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File> pickImage({bool useCamera = false}) async {
  final picker = ImagePicker();
  ImageSource imageSource =
      useCamera ? ImageSource.camera : ImageSource.gallery;
  final pickedFile = await picker.getImage(source: imageSource);
  final File image = File(pickedFile.path);
  return image;
}
