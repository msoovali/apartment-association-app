import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_modal.dart';

class SelectPeriodModal extends SelectModal<String> {
  SelectPeriodModal(List<String> selectablePeriods)
      : super(
          title: TranslatableStrings.selectPeriod,
          items: selectablePeriods,
          itemDisplay: (selectablePeriod, context) =>
              '${selectablePeriod.split("_")[1]}.${selectablePeriod.split("_")[0]}',
        );
}
