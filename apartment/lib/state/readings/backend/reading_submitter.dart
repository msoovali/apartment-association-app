import 'dart:developer';

import 'package:apartment/state/apartment/models/apartment.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis/sheets/v4.dart';

class ReadingSubmitter {
  const ReadingSubmitter();

  Future<void> call(String coldWater, String hotWater, Apartment apartment,
      String spreadSheetName) async {
    final client = await Settings.googleSignIn.authenticatedClient();
    if (client == null) {
      throw Exception('Failed to get google apis client');
    }
    final driveApi = DriveApi(client);
    final fileList = await driveApi.files.list(
        q: 'name=\'$spreadSheetName\' and \'1QZpHiq_1xbBFSSdusb_wvzT5oiggrIuq\' in parents and mimeType=\'application/vnd.google-apps.spreadsheet\'',
        $fields: 'files(id,name)');
    final spreadsheetId = fileList.files?.firstOrNull?.id;
    if (spreadsheetId == null) {
      throw Exception('Failed to get spreadsheet id');
    }
    log(spreadsheetId);
    final coldWaterRequest =
        ValueRange(range: 'Arvestus!${apartment.coldWaterCell}', values: [
      [coldWater]
    ]);
    final hotWaterRequest =
        ValueRange(range: 'Arvestus!${apartment.hotWaterCell}', values: [
      [hotWater]
    ]);
    final sheetsApi = SheetsApi(client);
    await sheetsApi.spreadsheets.values.batchUpdate(
        BatchUpdateValuesRequest(
            data: [coldWaterRequest, hotWaterRequest],
            valueInputOption: 'USER_ENTERED'),
        spreadsheetId);
  }
}
