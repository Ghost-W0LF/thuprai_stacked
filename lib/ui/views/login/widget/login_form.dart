import 'package:flutter/material.dart';
import 'package:thuprai_stacked/base/keys/key.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/login_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_text_form_field.dart';

// ignore: must_be_immutable

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.viewModel
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final LoginViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Form(
          child: Column(
        children: [
          PrimaryTextFormField(
            widgetKey: Key(loginEmail),
            controller: emailController,
            isVisible: true,
            labelText: AppText.email,
            hintText: AppText.email,
          ),
          if (viewModel!.hasEmailValidationMessage) ...[
            Text(
              textAlign: TextAlign.left,
              viewModel!.emailValidationMessage!,
              style: const TextStyle(
                color: kcPrimaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
          verticalSpaceMedium,
          PrimaryTextFormField(
            widgetKey: Key(loginPassword),
            controller: passwordController,
            labelText: AppText.password,
            hintText: AppText.password,
            haveSuffixIcon: true,
          ),
          if (viewModel!.hasPasswordValidationMessage) ...[
            Text(
              viewModel!.passwordValidationMessage!,
              style: const TextStyle(
                color: kcPrimaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ],
      )),
    );
  }
}

