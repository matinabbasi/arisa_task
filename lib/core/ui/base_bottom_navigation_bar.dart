import 'package:arisa_task/core/ui/bottom_navigation_bar/controller.dart';
import 'package:arisa_task/core/utils/text_Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);
  CustomBottomNavigationBarController customBottomNavigationBarController =
      Get.put(CustomBottomNavigationBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: 95,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.bottomCenter,
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 61,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          (customBottomNavigationBarController
                                      .selectedNav.value ==
                                  1)
                              ? Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          decoration:
                                              const BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(0, 0),
                                              blurRadius: 150,
                                            )
                                          ]),
                                          child: SvgPicture.asset(
                                            'assets/images/svg/Polygon.svg',
                                          ),
                                        ),
                                        Positioned(
                                            left: 20,
                                            top: 17,
                                            child: SvgPicture.asset(
                                              'assets/images/svg/document-text.svg',
                                              color: const Color(0xff1C4870),
                                            )),
                                      ],
                                    ),
                                    Text(
                                      "پرونده های من",
                                      style: CustomTextStyle
                                          .bottomNavigationBarSelect,
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/document-text.svg',
                                      color: const Color(0xff909090),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "پرونده های من",
                                      style: CustomTextStyle
                                          .bottomNavigationBarUnSelect,
                                    )
                                  ],
                                ),
                        ],
                      ),
                      onTap: () {
                        customBottomNavigationBarController.selectedNav.value =
                            1;
                      },
                    ),
                    InkWell(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          (customBottomNavigationBarController
                                      .selectedNav.value ==
                                  2)
                              ? Column(
                                  children: [
                                    Stack(children: [
                                      Container(
                                        decoration:
                                            const BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 150,
                                          )
                                        ]),
                                        child: SvgPicture.asset(
                                          'assets/images/svg/Polygon.svg',
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        top: 17,
                                        child: SvgPicture.asset(
                                          'assets/images/svg/home-2 1.svg',
                                          color: const Color(0xff1C4870),
                                        ),
                                      )
                                    ]),
                                    Text(
                                      "خانه",
                                      style: CustomTextStyle
                                          .bottomNavigationBarSelect,
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/home-2 1.svg',
                                      color: const Color(0xff909090),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "خانه",
                                      style: CustomTextStyle
                                          .bottomNavigationBarUnSelect,
                                    )
                                  ],
                                ),
                        ],
                      ),
                      onTap: () {
                        customBottomNavigationBarController.selectedNav.value =
                            2;
                      },
                    ),
                    InkWell(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          (customBottomNavigationBarController
                                      .selectedNav.value ==
                                  3)
                              ? Column(
                                  children: [
                                    Container(
                                      decoration:
                                          const BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(0, 0),
                                          blurRadius: 150,
                                        )
                                      ]),
                                      child: Stack(children: [
                                        SvgPicture.asset(
                                          'assets/images/svg/Polygon.svg',
                                        ),
                                        Positioned(
                                          left: 20,
                                          top: 17,
                                          child: SvgPicture.asset(
                                            'assets/images/svg/document-forward.svg',
                                            color: const Color(0xff1C4870),
                                          ),
                                        )
                                      ]),
                                    ),
                                    Text(
                                      "ارسال نواقصن",
                                      style: CustomTextStyle
                                          .bottomNavigationBarSelect,
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/document-forward.svg',
                                      color: const Color(0xff909090),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "ارسال نواقصن",
                                      style: CustomTextStyle
                                          .bottomNavigationBarUnSelect,
                                    )
                                  ],
                                ),
                        ],
                      ),
                      onTap: () {
                        customBottomNavigationBarController.selectedNav.value =
                            3;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

// BottomNavigationBar(
// items: [
// BottomNavigationBarItem(
// label: "پرونده های من",
// icon: SvgPicture.asset('assets/images/svg/document-text.svg',),
// ),
// BottomNavigationBarItem(
// icon: SvgPicture.asset('assets/images/svg/home-2 1.svg'),
// label: "پرونده های من"
// ),
// BottomNavigationBarItem(
// icon: SvgPicture.asset('assets/images/svg/document-forward.svg'),
// label:"پرونده های من"
// )
// ],
// );
