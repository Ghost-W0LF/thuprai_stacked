import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:thuprai_stacked/app/app.router.dart';
import 'package:thuprai_stacked/base/keys/key.dart';
import 'package:thuprai_stacked/base/validator/text_form_field_validator.dart';
import 'package:thuprai_stacked/ui/common/app_image.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/widget/login_form.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';
import 'package:thuprai_stacked/widgets/secondary_button.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email', validator: TextFormValidators.emailValidators),
  FormTextField(
      name: 'password', validator: TextFormValidators.passwordValidators),
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  LoginView({super.key});
  final navigation = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      key: Key(loginViewKey),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          AppText.thuprai,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //App Bar

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
            LoginForm(
              viewmodel: viewModel,
            ),
            verticalSpaceMedium,
            //LoginButton
            PrimaryButton(
              widgetKey: Key(loginButton),
              text: AppText.Continue,
              onPressedCallBack: viewModel.requestLogin,
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
                    onPressedCallBack: viewModel.navigationToSignup),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            navigation.navigateToUikitView();
          },
          icon: const Icon(Icons.app_blocking)),
    );
  }

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
