import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/reusable_widgets/custom_snack_bar.dart';
import '../../models/user_model.dart';

class UserDetails {
  static Future createUserDetails({
    String? inviteCode,
    required String email,
    required String userName,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required bool createdAccount,
    required BuildContext context,
  }) async {
    try {
      final docUser = FirebaseFirestore.instance.collection('users').doc(email);
      final user = UserModel(
        email: email,
        userName: userName,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        inviteCode: inviteCode,
      );
      await docUser.set(user.toJson()).then((value) {
        createdAccount = true;
      }).onError((error, stackTrace) {
        failureTopSnackBar(
          context: context,
          message: error.toString(),
        );
      });
    } catch (e) {
      if (e is FirebaseException) {
        final error =
            FirebaseException(plugin: 'Sign In', message: e.toString());
        if (kDebugMode) {
          print(error);
        }
      }
    }
  }
}
