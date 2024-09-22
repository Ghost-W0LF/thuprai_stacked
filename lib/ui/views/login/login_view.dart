import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/widget/login_form.dart';
import 'package:thuprai_stacked/widgets/primary_appbar.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/secondary_button.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //App Bar
            const PrimaryAppbar(),
            verticalSpaceMedium,

            /// Title Text
            Text(
              AppText.loginTitle,
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
            const LoginForm(),
            verticalSpaceMedium,
            PrimaryButton(
              text: AppText.Continue,
              onPressedCallBack: () {},
            ),

            /// Footter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                  isATextButtton: true,
                  text: AppText.forgotPassword,
                  onPressedCallBack: () {},
                ),
                PrimaryButton(
                  isATextButtton: true,
                  text: AppText.signup,
                  onPressedCallBack: () {},
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
          IconButton(onPressed: () {}, icon: const Icon(Icons.app_blocking)),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
