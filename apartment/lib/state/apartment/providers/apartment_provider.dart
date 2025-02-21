import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/state/apartment/models/apartment.dart';
import 'package:apartment/views/constants/localstorage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apartment_provider.g.dart';

@riverpod
class SelectedApartment extends _$SelectedApartment {
  @override
  Apartment? build() {
    final apartmentNumber =
        LocalStorageService().getInt(LocalStorageKeys.apartment);
    if (apartmentNumber == null) {
      return null;
    }
    return Apartment.values.firstWhere((a) => a.number == apartmentNumber);
  }

  void clear() async {
    await LocalStorageService().remove(LocalStorageKeys.apartment);
    state = null;
  }

  void selectApartment(Apartment apartment) async {
    await LocalStorageService()
        .setInt(LocalStorageKeys.apartment, apartment.number);
    state = apartment;
  }
}
