import 'package:arisa_task/core/ui/base_app_bar.dart';
import 'package:arisa_task/core/ui/base_bottom_navigation_bar.dart';
import 'package:arisa_task/core/utils/text_Styles.dart';
import 'package:arisa_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: const CustomAppbar(),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 36,
              width: MediaQuery.of(context).size.width * 0.77,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(
                    255,
                    28,
                    72,
                    112,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "صدور بیمه بدنه",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Iransans',
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 33,
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Text(
                        "بازدید بدنه",
                        style: CustomTextStyle.main,
                      ),
                    ),
                    const Text(
                      "اعلام خسارت",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Iransans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.91,
                height: 48,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: S.of(context).text_form_field,
                    labelStyle: CustomTextStyle.hint,
                    suffixIcon: const Icon(Icons.search_rounded),
                  )),
                )),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.91,
              height: 383,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg/bookmark.svg',
                      ),
                      const Positioned(
                        top: 5,
                        right: 5,
                        child: Text(
                          "خودم",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 16, left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                overflow: TextOverflow.fade,
                                "شناسه پرونده ",
                                style: CustomTextStyle.main,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: Text(
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.fade,
                                "0iajz4o474",
                                style: CustomTextStyle.main,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                overflow: TextOverflow.fade,
                                "نام مشتری",
                                style: CustomTextStyle.main,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Text(
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.fade,
                                "محمدعلی مراد بیگ زاده",
                                style: CustomTextStyle.main,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                overflow: TextOverflow.fade,
                                "تلفن همراه",
                                style: CustomTextStyle.main,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Text(
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.fade,
                                "09127825671",
                                style: CustomTextStyle.main,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                overflow: TextOverflow.fade,
                                "محل بازدید",
                                style: CustomTextStyle.main,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Text(
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.fade,
                                "شهرک غرب، فاز 4، زرافشان، خیابان شجریان، پلاک 13، واحد 8",
                                style: CustomTextStyle.main,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 84,
                          width: MediaQuery.of(context).size.width * 0.83,
                          decoration: const BoxDecoration(
                              color: Color(0xffF6F6F8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/svg/sheet.svg',
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text("وضعیت پرونده"),
                                      ],
                                    ),
                                    const Text("تأیید شده توسط نماینده")
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/svg/clock.svg',
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text("زمان بازدید"),
                                      ],
                                    ),
                                    const Text("14:11 _ 1401-06-01")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 8,
                              child: Center(
                                child: InkWell(
                                  child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.40,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3,
                                              color: const Color(0xff1C4870)),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'ورود به صفحه پرونده',
                                        style: CustomTextStyle.main,
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              height: 45,
                              width: 45,
                              'assets/images/svg/done.svg',
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "انجام شد ",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        )
                      ],
                    ))
              ]),
            ),
            const Spacer(),
            CustomBottomNavigationBar()
          ],
        ),
      ),
    );
  }
}
