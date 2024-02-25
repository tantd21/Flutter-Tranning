import 'package:flutter/material.dart';
import 'package:thi_don_s_application1/core/app_export.dart';
import 'package:thi_don_s_application1/widgets/custom_outlined_button.dart';
import 'package:thi_don_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateAnAccountScreen extends StatelessWidget {
  CreateAnAccountScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 59.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 70.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 19.h),
                                  child: Column(children: [
                                    SizedBox(
                                        width: 155.h,
                                        child: Text("Create an account",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style:
                                                theme.textTheme.displaySmall)),
                                    SizedBox(height: 72.v),
                                    _buildCreateAnAccountUsername(context),
                                    SizedBox(height: 26.v),
                                    _buildCreateAnAccountPassword(context),
                                    SizedBox(height: 5.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "Password should be 8 characters long",
                                            style:
                                                CustomTextStyles.bodySmall9)),
                                    SizedBox(height: 20.v),
                                    _buildCreateAnAccountConfirmPassword(
                                        context),
                                    SizedBox(height: 31.v),
                                    CustomOutlinedButton(
                                        width: 119.h,
                                        text: "Sign up",
                                        alignment: Alignment.centerLeft),
                                    SizedBox(height: 39.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 37.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 9.v, bottom: 8.v),
                                                  child: SizedBox(
                                                      width: 102.h,
                                                      child: Divider())),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Text("OR",
                                                      style: theme.textTheme
                                                          .bodyMedium)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 9.v, bottom: 8.v),
                                                  child: SizedBox(
                                                      width: 112.h,
                                                      child: Divider(
                                                          indent: 10.h)))
                                            ])),
                                    SizedBox(height: 12.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgTelevision,
                                        height: 24.v,
                                        width: 81.h),
                                    SizedBox(height: 36.v),
                                    Text("Already have an account?",
                                        style: CustomTextStyles
                                            .bodyMediumPoppinsBlack900),
                                    SizedBox(height: 5.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogin(context);
                                        },
                                        child: Text("Login",
                                            style: CustomTextStyles
                                                .bodyMediumPoppins))
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildCreateAnAccountUsername(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Username", style: theme.textTheme.bodySmall),
      SizedBox(height: 3.v),
      CustomTextFormField(controller: userNameController, hintText: "Username")
    ]);
  }

  /// Section Widget
  Widget _buildCreateAnAccountPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 3.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Password",
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildCreateAnAccountConfirmPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Confirm password", style: theme.textTheme.bodySmall),
      SizedBox(height: 2.v),
      CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "Confirm Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.outlineDeepOrangeA)
    ]);
  }

  /// Navigates to the androidOneScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidOneScreen);
  }
}
