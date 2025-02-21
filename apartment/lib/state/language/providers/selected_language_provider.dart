import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/views/constants/language.dart';
import 'package:apartment/views/constants/localstorage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_language_provider.g.dart';

@riverpod
class SelectedLanguage extends _$SelectedLanguage {
  @override
  Language build() => Language.fromName(
      LocalStorageService().getString(LocalStorageKeys.language));

  void selectLanguage(Language language) async {
    await LocalStorageService()
        .setString(LocalStorageKeys.language, language.name);
    state = language;
  }
}
