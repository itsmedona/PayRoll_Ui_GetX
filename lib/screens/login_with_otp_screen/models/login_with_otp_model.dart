import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/data/models/selectionPopupModel/selection_popup_model.dart';

class LoginWithOtpModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
      ),
       SelectionPopupModel(
      id: 2,
      title: "Item Two",
      ),
       SelectionPopupModel(
      id: 3,
      title: "Item Three",
       )
  ]);
}
