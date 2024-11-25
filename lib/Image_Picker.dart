import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryAccess extends StatefulWidget {
  @override
  _GalleryAccessState createState() => _GalleryAccessState();
}

class _GalleryAccessState extends State<GalleryAccess> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Image')),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: getImage, child: Text('Pick Image')),
            _image == null ? Text('No image selected.') : Image.file(_image!),
          ],
        ),
      ),
    );
  }
}
