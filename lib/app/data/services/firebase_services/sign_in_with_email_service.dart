

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/reusable_widgets/custom_snack_bar.dart';

class SignIn with ChangeNotifier{
  static Future<void> signInWithEmail ({
    required String email,
    required String password,
    required bool isSignedIn,
    required BuildContext context,
  }) async {
    try {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value) {
       isSignedIn = true;
      }).onError((error, stackTrace) {
        failureTopSnackBar(
          context: context,
          message: error.toString(),
        );
      });
    }catch(e) {
      if (e is FirebaseException) {
        final error = FirebaseException(plugin: 'Sign In',message: e.toString());
        if (kDebugMode) {
          print(error);
        }
        }
    }

  }
}