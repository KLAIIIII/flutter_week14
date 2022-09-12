import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติส่วนตัว"),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("นายสตีฟ จอบส์"),
              Text("ศึกษาจบจากวิทยาลัยรีด"),
              Text("ผู้ก่อตั้ง Apple"),
            ],
          ),
      ),
    );
  }
}
