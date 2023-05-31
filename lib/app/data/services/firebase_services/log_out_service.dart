

import 'package:firebase_auth/firebase_auth.dart';

class LogOut {
  static void logOut () {
    FirebaseAuth.instance.signOut();
  }
}