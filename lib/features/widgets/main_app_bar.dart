import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/features/about_us/about_us.dart';
import 'package:domen/features/contact_us/contact_us.dart';
import 'package:domen/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.contactNeeds = true});
  final bool contactNeeds;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      backgroundColor: AppColor.primaryWhite,
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
                    style: TextStyles.style22w400N(AppColor.mainBlue),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  AboutUs.route(),
                );
                },
              child: Text(
                'About Us',
                style: TextStyles.style22w700M(AppColor.mainBlue),
              ),
            ),
            const SizedBox(width: 100),
            Text(
              'Our Products',
              style: TextStyles.style22w700M(AppColor.mainBlue),
            ),
            const Expanded(child: SizedBox()),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: contactNeeds
                  ? () {
                      Navigator.push(
                        context,
                        ContactUs.route(),
                      );
                    }
                  : null,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColor.mainBlue),
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
                      AppColor.mainBlue,
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
