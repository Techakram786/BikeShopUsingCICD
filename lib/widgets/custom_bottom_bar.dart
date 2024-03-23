import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_bike_shop/utils/size_utils.dart';

import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import 'custom_image_view.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged,})
      : super(key: key,);

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgSelectedButton,
      activeIcon: ImageConstant.imgSelectedButton,
      type: BottomBarEnum.Selectedbutton,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMail,
      activeIcon: ImageConstant.imgMail,
      type: BottomBarEnum.Mail,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgDocTextFill,
      activeIcon: ImageConstant.imgDocTextFill,
      type: BottomBarEnum.Doctextfill,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103.v,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.05),
          end: Alignment(0.5, 1.17),
          colors: [
            appTheme.blueGray80001.withOpacity(0.4),
            appTheme.gray90066,
          ],
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 17.v,
                width: 18.h,
                color: appTheme.whiteA70001,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 60.adaptSize,
                width: 60.adaptSize,
                color: appTheme.whiteA70001,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Selectedbutton,
  Mail,
  Cart,
  Lock,
  Doctextfill,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
