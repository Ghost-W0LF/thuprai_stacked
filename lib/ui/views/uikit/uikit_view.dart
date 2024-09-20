import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/app_strings.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/primary_text_form_field.dart';
import 'package:thuprai_stacked/widgets/secondary_button.dart';
import 'package:thuprai_stacked/widgets/section_selector.dart';

import 'uikit_viewmodel.dart';

class UikitView extends StackedView<UikitViewModel> {
  const UikitView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UikitViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const PrimaryAppbar(),
              const SizedBox(height: 20),
              Text(
                KText.loginTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              verticalSpaceMedium,
              PrimaryButton(
                onPressed: () {},
                text: KText.login,
              ),
              verticalSpaceMedium,
              const SecondaryButton(
                  imageUrl: AppImage.google, text: KText.signinGoogle),
              verticalSpaceMedium,
              //email
              PrimaryTextFormField(
                hintText: KText.email,
              ),
              verticalSpaceMedium,
              //Password
              PrimaryTextFormField(
                isVisible: false,
                hintText: KText.password,
                haveSuffixIcon: true,
              ),
              verticalSpaceMedium,
              verticalSpaceMedium,
              const SectionSelector()
            ],
          ),
        ));
  }

  @override
  UikitViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UikitViewModel();
}
