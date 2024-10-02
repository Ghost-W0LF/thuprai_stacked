import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/ui/views/login/login_viewmodel.dart';
import 'package:thuprai_stacked/widgets/primary_text_form_field.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget with $LoginView {
  LoginForm({
    super.key,
    required this.viewmodel,
  });
  LoginViewModel viewmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Form(
          child: Column(
        children: [
          PrimaryTextFormField(
            controller: emailController,
            isVisible: true,
            labelText: AppText.email,
            hintText: AppText.email,
          ),
          if (viewmodel.hasEmailValidationMessage) ...[
            Text(
              textAlign: TextAlign.left,
              viewmodel.emailValidationMessage!,
              style: const TextStyle(
                color: kcPrimaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
          verticalSpaceMedium,
          PrimaryTextFormField(
            controller: passwordController,
            labelText: AppText.password,
            hintText: AppText.password,
            haveSuffixIcon: true,
          ),
          if (viewmodel.hasPasswordValidationMessage) ...[
            Text(
              viewmodel.passwordValidationMessage!,
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
