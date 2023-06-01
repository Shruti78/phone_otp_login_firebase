import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  File? file;
  Future selectFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
   // String path = result.files.single.path!;
    // File file = File(result.files.single.path!);

    setState(() => file = File(result.files.single.path!));
  }

  Future uploadFile() async {
    // final path = 'files/${pickedFile!.name}';
    // final file = File(pickedFile!.path!);

    // final ref = FirebaseStorage.instance.ref().child(path);
    // ref.putFile(file);
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;

      // Upload file
      final ref = FirebaseStorage.instance.ref().child(fileName);
      uploadTask = ref.putData(fileBytes!);

      // .ref('uploads/$fileName')
      // .putData(fileBytes!);
      final snapshot = await uploadTask!.whenComplete(() {});

      final urlDownload = await snapshot.ref.getDownloadURL();
      print('link : $urlDownload');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pickedFile != null)
              Expanded(
                  child: Container(
                color: Colors.blue,
                child: Center(
                  child: Image.file(
                    File(pickedFile!.path!),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: uploadFile,
              child: Text('UPLOAD'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: selectFile,
              child: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
