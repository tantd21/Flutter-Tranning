import 'package:flutter/material.dart';
import 'package:thi_don_s_application1/core/app_export.dart';
import 'package:thi_don_s_application1/widgets/custom_outlined_button.dart';
import 'package:thi_don_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidOneScreen extends StatelessWidget {
  AndroidOneScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 36.v),
                            child: Column(children: [
                              SizedBox(height: 17.v),
                              Text("Welcome",
                                  style: theme.textTheme.displaySmall),
                              Spacer(),
                              _buildUsernameSection(context),
                              SizedBox(height: 9.v),
                              _buildPasswordSection(context),
                              SizedBox(height: 8.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 6.h),
                                      child: Text("Forget Password?",
                                          style: CustomTextStyles
                                              .bodySmallRobotoDeeporangeA400))),
                              SizedBox(height: 8.v),
                              CustomOutlinedButton(
                                  width: 119.h,
                                  text: "Login",
                                  alignment: Alignment.centerLeft),
                              SizedBox(height: 36.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 39.h),
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
                                            padding:
                                                EdgeInsets.only(left: 12.h),
                                            child: Text("OR",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 9.v, bottom: 8.v),
                                            child: SizedBox(
                                                width: 112.h,
                                                child: Divider(indent: 10.h)))
                                      ])),
                              SizedBox(height: 17.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 30.v,
                                  width: 99.h),
                              SizedBox(height: 23.v),
                              Text("Don’t have an account?",
                                  style: CustomTextStyles
                                      .bodyMediumPoppinsBlack900),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtCreateNewAccount(context);
                                  },
                                  child: Text("Create new account",
                                      style: CustomTextStyles
                                          .bodySmallPoppinsDeeporangeA400))
                            ])))))));
  }

  /// Section Widget
  Widget _buildUsernameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Username", style: theme.textTheme.bodySmall),
          SizedBox(height: 3.v),
          CustomTextFormField(
              controller: userNameController,
              hintText: "Username",
              borderDecoration: TextFormFieldStyleHelper.outlineDeepOrangeA)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Password", style: theme.textTheme.bodySmall),
          SizedBox(height: 3.v),
          CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: true)
        ]));
  }

  /// Navigates to the createAnAccountScreen when the action is triggered.
  onTapTxtCreateNewAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAnAccountScreen);
  }
}
