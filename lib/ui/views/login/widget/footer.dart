import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/views/login/login_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, this.viewModel});
  final LoginViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            onPressedCallBack: viewModel!.navigationToSignup),
      ],
    );
  }
}
