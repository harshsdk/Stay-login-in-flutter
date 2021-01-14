import 'package:flutter/material.dart';
import 'package:getX/loginpage.dart';

import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Shared Preferences"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "USER DATA",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "NAME : ${userdata.read('username')}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            RaisedButton(
              onPressed: () {
                userdata.write('isLogged', false);
                userdata.remove('username');
                Get.offAll(LoginPage());
              },
              child: Text("LOGOUT"),
            )
          ],
        ),
      ),
    );
  }
}
