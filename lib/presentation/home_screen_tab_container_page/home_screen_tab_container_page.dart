import 'package:flutter/material.dart';import 'package:manvendra_s_application2/core/app_export.dart';import 'package:manvendra_s_application2/presentation/home_screen_page/home_screen_page.dart';import 'package:manvendra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:manvendra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:manvendra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:manvendra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:manvendra_s_application2/widgets/custom_search_view.dart';class HomeScreenTabContainerPage extends StatefulWidget {const HomeScreenTabContainerPage({Key? key}) : super(key: key);

@override HomeScreenTabContainerPageState createState() =>  HomeScreenTabContainerPageState();

 }

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerPageState extends State<HomeScreenTabContainerPage> with  TickerProviderStateMixin {TextEditingController searchController = TextEditingController();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 25.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_hello_daniel".tr, style: theme.textTheme.headlineLarge))), SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "lbl_search".tr)), SizedBox(height: 31.v), _buildTabview(context), Expanded(child: SizedBox(height: 1313.v, child: TabBarView(controller: tabviewController, children: [HomeScreenPage(), HomeScreenPage(), HomeScreenPage()])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGoogle, margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_comfort".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIcons, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 11.h), onTap: () {onTapIcons(context);}), AppbarTrailingImage(imagePath: ImageConstant.imgClock, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 35.h))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 38.v, width: 376.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.primary, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(19.h)), tabs: [Tab(child: Text("lbl_recommended".tr)), Tab(child: Text("lbl_popular".tr)), Tab(child: Text("lbl_trending".tr))])); } 
/// Navigates to the notificationsScreen when the action is triggered.
onTapIcons(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsScreen, ); } 
 }
