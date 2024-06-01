import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/shared/widgets/custom_form_field.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/add_btn.dart';
import '../widgets/form_container.dart';

class SupervisorBasicInfoView extends StatefulWidget {
  const SupervisorBasicInfoView({super.key});

  @override
  State<SupervisorBasicInfoView> createState() =>
      _SupervisorBasicInfoViewState();
}

class _SupervisorBasicInfoViewState extends State<SupervisorBasicInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.p16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50.h),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppImages.leafSvg,
                        height: 80.h,
                      ),
                      Text(
                        S.of(context).marhom,
                        style: CustomTextStyle.kTextStyleF26,
                      ),
                    ],
                  ),
                ),
                Gap(20.h),
                Text(
                  "Basic Info",
                  style: CustomTextStyle.kTextStyleF26,
                ),
                Gap(30.h),
                const FormContainer(
                  title: "City",
                ),
                Gap(20.h),
                Text(
                  "Mosques",
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Gap(10.h),
                CustomFormField(
                  stream: const Stream.empty(),
                  onChanged: (value) {},
                  label: "Name",
                ),
                const FormContainer(title: "Location"),
                Gap(10.h),
                AddBtn(
                  onTap: () {},
                ),
                Gap(20.h),
                Text(
                  "Burial Locations",
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Gap(10.h),
                CustomFormField(
                  stream: const Stream.empty(),
                  onChanged: (value) {},
                  label: "Name",
                ),
                const FormContainer(title: "Location"),
                Gap(10.h),
                AddBtn(
                  onTap: () {},
                ),
                Gap(20.h),
                Text(
                  "Helpers",
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Gap(10.h),
                // DropDownSearchField(
                //   textFieldConfiguration: TextFieldConfiguration(
                //       autofocus: true,
                //       style: DefaultTextStyle.of(context).style.copyWith(
                //           fontStyle: FontStyle.italic
                //       ),
                //       decoration: const InputDecoration(
                //           border: OutlineInputBorder()
                //       )
                //   ),
                //   suggestionsCallback: (pattern) async {
                //     return await BackendService.getSuggestions(pattern);
                //   },
                //   itemBuilder: (context, suggestion) {
                //     return ListTile(
                //       leading: const Icon(Icons.shopping_cart),
                //       title: Text(suggestion!['name'].name),
                //       subtitle: Text("\$${suggestion!['price']}"),
                //     );
                //   },
                //   onSuggestionSelected: (suggestion) {
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => ProductPage(product: suggestion)
                //     ));
                //   }, displayAllSuggestionWhenTap: false,
                // ),
                CustomFormField(
                  stream: const Stream.empty(),
                  onChanged: (value) {},
                  label: "Name",
                ),
                CustomFormField(
                  stream: const Stream.empty(),
                  onChanged: (value) {},
                  label: "Phone",
                ),
                Gap(10.h),
                AddBtn(
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
