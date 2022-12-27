import 'package:atomic_design/atoms/text.dart';
import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;
  final Widget? leading;
  final List<Widget>? iconAction;


  const OurAppBar({
    super.key, 
    this.title = 'Arquitectura limpia',
    this.iconAppBarr = const Icon(Icons.add), 
    this.leading, 
    this.iconAction
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: leading ?? const Icon(Icons.arrow_back_ios),
      backgroundColor: footerBackground,
      title: H1(text: title, key: const Key('head-wc'),),
      actions: iconAction ?? [
        IconButton(
          icon: iconAppBarr,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () {}
        )
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


}