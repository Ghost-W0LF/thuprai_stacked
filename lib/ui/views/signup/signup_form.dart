import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_text.dart';
import 'package:thuprai_stacked/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked/ui/views/signup/signup_view.form.dart';
import 'package:thuprai_stacked/widgets/primary_text_form_field.dart';

class SignupForm extends StatelessWidget with $SignupView {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Form(
          child: Column(
        children: [
          PrimaryTextFormField(
            controller: fullNameController,
            isVisible: true,
            labelText: AppText.fullname,
            hintText: AppText.fullname,
          ),
          verticalSpaceMedium,
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
