import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.contactNeeds = true});
  final bool contactNeeds;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      backgroundColor: Palette().mainBackground(),
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Row(
                children: [
                  SizedBox(width: !contactNeeds ? 0 : 40),
                  Image.asset(Assets.png.logo.path, width: 56, height: 56),
                  const SizedBox(width: 8),
                  Text(
                    'THE GLOBAL IT\nINNOVATIONS',
                    textAlign: TextAlign.center,
                    style: TextStyles.style22w400N(Palette().linkText()),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () => context.go('/about_us'),
              child: Text(
                'About Us',
                style: TextStyles.style22w700M(Palette().linkText()),
              ),
            ),
            // const SizedBox(width: 100),
            // Text(
            //   'Our Products',
            //   style: TextStyles.style22w700M(AppColor.mainBlue),
            // ),
            const Expanded(child: SizedBox()),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: contactNeeds ? () => context.go('/contact_us') : null,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Palette().linkText()),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 40,
                  ),
                  child: Text(
                    'Contact Us',
                    style: TextStyles.style22w700M(
                      Palette().linkText(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
