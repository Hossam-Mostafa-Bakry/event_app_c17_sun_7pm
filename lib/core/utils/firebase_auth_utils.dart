import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';

abstract class FirebaseAuthUtils {
  static Future<bool> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        toastification.show(
          title: Text('invalid-credential'),
          type: ToastificationType.error,
          autoCloseDuration: Duration(seconds: 5),
        );
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        toastification.show(
          title: Text('Wrong password provided for that user.'),
          type: ToastificationType.error,
          autoCloseDuration: Duration(seconds: 5),
        );
        print('Wrong password provided for that user.');
      }
      return Future.value(false);
    }
  }

  static Future<bool> signUpWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastification.show(
          title: Text('The password provided is too weak.'),
          type: ToastificationType.error,
          autoCloseDuration: Duration(seconds: 5),
        );
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        toastification.show(
          title: Text('The account already exists for that email.'),
          type: ToastificationType.error,
          autoCloseDuration: Duration(seconds: 5),
        );
        print('The account already exists for that email.');
      }
      return Future.value(false);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }
}
