

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateUser {
  // static void createUserWithFirebase ({required String email, required String password, }) {
  //   FirebaseAuth.instance.createUserWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   );
  // }
  static void createUserAndSaveData({
    required String email,
    required String password,
    required Map<String, dynamic> data
}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      CollectionReference usersRef = FirebaseFirestore.instance.collection(
          'users');
      await usersRef.doc(userCredential.user!.uid).set(data);

      // Account created and data saved successfully
      print('Account created and data saved successfully');
    } catch (e) {
      // Error occurred during account creation or data saving
      print('Error: $e');
    }
  }
}