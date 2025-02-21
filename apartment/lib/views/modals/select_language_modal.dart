import 'package:apartment/views/constants/language.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_modal.dart';

class SelectLanguageModal extends SelectModal<Language> {
  SelectLanguageModal()
      : super(
          title: TranslatableStrings.selectLanguage,
          items: Language.values,
          itemDisplay: (language, context) =>
              '${language.flag} ${language.name}',
        );
}
