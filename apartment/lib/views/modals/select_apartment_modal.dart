import 'package:apartment/state/apartment/models/apartment.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_modal.dart';

class SelectApartmentModal extends SelectModal<Apartment> {
  SelectApartmentModal()
      : super(
          title: TranslatableStrings.selectApartment,
          items: Apartment.values,
          itemDisplay: (apartment, context) =>
              '${AppLocalizations.of(context).translate(TranslatableStrings.apartment)} ${apartment.number}',
        );
}
