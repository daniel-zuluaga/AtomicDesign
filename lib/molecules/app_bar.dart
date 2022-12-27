import 'package:atomic_design/atoms/text.dart';
import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundAppBar;


  const AppBarWidget({
    super.key, 
    this.title = 'Hola soy Daniel',
    this.iconAppBarr = const Icon(Icons.add), 
    this.leading, 
    this.actions, 
    this.backgroundAppBar
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: leading ?? const Icon(Icons.arrow_back_ios),
      backgroundColor: backgroundAppBar ?? footerBackground,
      title: H1(text: title, key: const Key('head-wc'),),
      actions: actions ?? [
        const SizedBox(width: 12,),
        IconButton(
          icon: iconAppBarr,
          onPressed: () {},
        ),
        const SizedBox(width: 12,),
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