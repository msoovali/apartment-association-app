import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:intl/intl.dart';

@immutable
class Settings {
  static const String gcsBaseUrl = 'https://storage.googleapis.com';
  static const String gcsBucketName = 'kukeskvaela8';
  static const String bucketContentsUrl =
      '$gcsBaseUrl/storage/v1/b/$gcsBucketName/o';
  static const String apiBaseUrl = '$gcsBaseUrl/$gcsBucketName';
  static const String translationsUrl = '$apiBaseUrl/translations.json';
  static final DateFormat dayMonthYearFormat = DateFormat('dd.MM.yyyy');
  static final DateFormat dayMonthFormat = DateFormat('dd.MM');
  static const String currency = '€';
  static const String receiverLabel = 'RECEIVER';
  static const String driveApi = 'https://www.googleapis.com/drive/v3/files';
  static const String sheetsApi =
      'https://sheets.googleapis.com/v4/spreadsheets';
  static final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [DriveApi.driveScope],
  );
}
