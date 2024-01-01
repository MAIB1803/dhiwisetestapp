import 'package:flutter/material.dart';import 'package:manvendra_s_application2/core/app_export.dart';import 'package:manvendra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:manvendra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:manvendra_s_application2/widgets/custom_elevated_button.dart';class ChoosePaymentMethodScreen extends StatelessWidget {const ChoosePaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildAddNewCard(context), SizedBox(height: 24.v), _buildPaymentMethodsGoogle(context, userImage: ImageConstant.imgFrameLightBlue600, googlePayText: "lbl_paypal".tr), SizedBox(height: 28.v), _buildPaymentMethodsGoogle(context, userImage: ImageConstant.imgFrame, googlePayText: "lbl_google_pay".tr), SizedBox(height: 28.v), _buildPaymentMethodsGoogle(context, userImage: ImageConstant.imgFrameWhiteA70032x32, googlePayText: "lbl_apple_pay".tr), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 56.v, leadingWidth: 52.h, leading: Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.topLeft, onTap: () {onTapImgArrowLeft(context);}), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.topCenter)])), title: Container(height: 29.v, width: 96.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.bottomCenter, children: [AppbarTitle(text: "lbl_payment".tr), AppbarTitle(text: "lbl_payment".tr)])), actions: [Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgQrcode, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.topRight), CustomImageView(imagePath: ImageConstant.imgQrcode, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.topCenter)]))]); } 
/// Section Widget
Widget _buildAddNewCard(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_payment_methods".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtAddNewCard(context);}, child: Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_add_new_card".tr, style: CustomTextStyles.titleMediumPrimary16)))]); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinue(context);}); } 
/// Common widget
Widget _buildPaymentMethodsGoogle(BuildContext context, {required String userImage, required String googlePayText, }) { return Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineBlack9000c.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomImageView(imagePath: userImage, height: 32.adaptSize, width: 32.adaptSize), Padding(padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 2.v), child: Text(googlePayText, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.whiteA700))), Spacer(), CustomImageView(imagePath: ImageConstant.imgContrast, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h, bottom: 6.v))])); } 
 }
