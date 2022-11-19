import 'package:arisa_task/core/utils/text_Styles.dart';
import 'package:arisa_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(
        255,
        28,
        72,
        112,
      ),
      title: Text(S.of(context).my_files),
      titleTextStyle: CustomTextStyle.appBar,
      centerTitle: true,
      toolbarHeight: 100,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
