import 'dart:developer';

import 'package:apartment/state/auth/models/auth_result.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenticator {
  const Authenticator();

  Future<AuthResult> loginWithGoogle() async {
    try {
      final user = await Settings.googleSignIn.signIn();

      final googleAuth = await user?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      return AuthResult.success;
    } catch (e) {
      log(error: e, "Google sign in failed");
      return AuthResult.failure;
    }
  }

  bool get isAlreadyLoggedIn => userId != null;

  bool get isAnonymous =>
      FirebaseAuth.instance.currentUser?.isAnonymous ?? false;

  String? get userId => FirebaseAuth.instance.currentUser?.uid;

  String? get displayName => FirebaseAuth.instance.currentUser?.displayName;

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<AuthResult> loginAnonymously() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      return AuthResult.success;
    } catch (e) {
      log(error: e, "Anonymous sign in failed");
      return AuthResult.failure;
    }
  }
}
