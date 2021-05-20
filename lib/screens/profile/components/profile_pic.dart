import 'dart:io';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfilePic extends StatefulWidget {
  @override
  _ProfilePic createState() => _ProfilePic();

  const ProfilePic({
    Key key,
  }) : super(key: key);
}

class _ProfilePic extends State<ProfilePic> {
  final picker = ImagePicker();
  String image;
  File imageFile;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  chooseImage() async {
    PickedFile pickedImageFile =
        await picker.getImage(source: ImageSource.gallery);
    if (pickedImageFile != null) {
      setState(() {
        imageFile = File(pickedImageFile.path);
      });

      User user = FirebaseAuth.instance.currentUser;
      String userId = user.uid;

      String fileName = basename(pickedImageFile.path);
      firebase_storage.Reference firebaseStorageRef = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child(userId)
          .child('uploads/$fileName');
      firebase_storage.UploadTask uploadTask =
          firebaseStorageRef.putFile(File(pickedImageFile.path));
      firebase_storage.TaskSnapshot taskSnapshot = await uploadTask;
      taskSnapshot.ref.getDownloadURL().then((value) => {image = value});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/photos/itsme.png"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  chooseImage();
                },
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
