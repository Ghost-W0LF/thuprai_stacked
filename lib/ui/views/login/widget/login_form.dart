import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/login/login_view.form.dart';
import 'package:thuprai_stacked/widgets/primary_text_form_field.dart';

class LoginForm extends StatelessWidget with $LoginView {
  const LoginForm({
    super.key,
  });

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
          verticalSpaceMedium,
          PrimaryTextFormField(
            controller: passwordController,
            labelText: AppText.password,
            hintText: AppText.password,
            haveSuffixIcon: true,
          )
        ],
      )),
    );
  }
}
