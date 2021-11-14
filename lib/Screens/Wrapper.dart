import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Screens/home.dart';
import 'package:firstapp/authenticate/authentication_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firstapp/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user);
    if (user == null) {
      return Authentication();
    } else {
      return Home();
    }
  }
}
