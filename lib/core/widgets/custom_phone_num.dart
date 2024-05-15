import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_form_field.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';


class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    this.controller,
  }) : super(key: key);

  final Country country;
  final Function(Country) onTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 14.v, bottom: 12.v),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: CustomTextFormField(
              width: 253.h,
              controller: controller,
              hintText: "9876543210",
              hintStyle: theme.textTheme.bodyLarge!,
              textInputType: TextInputType.phone,
            ),
          ),
        )
      ],
    );
  }
  
  void openCountryPicker(BuildContext context) {}
}

Widget buildDialogItem(Country country) => Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        Container(
          margin: EdgeInsets.only(left: 10.h),
          width: 60.h,
          child: Text(
            "+${country.phoneCode}",
            style: TextStyle(fontSize: 14.fSize),
          ),
        )
      ],
    );
    
    class CountryPickerUtils {
      static getDefaultFlagImage(Country country) {}
    }
    
   