import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/signup/signup_form.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/secondary_button.dart';

import 'signup_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'full_name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class SignupView extends StackedView<SignupViewModel> {
  const SignupView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceMassive,

            /// Title Text
            Text(
              AppText.signupTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            verticalSpaceMedium,

            /// Secondary Buttons
            const SecondaryButton(
                imageUrl: AppImage.apple, text: AppText.signinApple),
            verticalSpaceSmall,

            /// Secondary Buttons
            const SecondaryButton(
                imageUrl: AppImage.facebook, text: AppText.signinFacebook),
            verticalSpaceSmall,

            /// Secondary Buttons
            const SecondaryButton(
                imageUrl: AppImage.google, text: AppText.signinGoogle),
            verticalSpaceMedium,
            const SignupForm(),
            verticalSpaceMedium,
            //LoginButton
            PrimaryButton(
              text: AppText.signup,
              onPressedCallBack: viewModel.signup,
            ),
            verticalSpaceMedium,

            /// Footter
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Already Have an account?',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                PrimaryButton(
                    isATextButtton: true,
                    text: "Login Here!",
                    onPressedCallBack: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
