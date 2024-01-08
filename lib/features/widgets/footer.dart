import 'package:flutter/material.dart';
import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, this.horizontalPaddingNeeds = true});
  final bool horizontalPaddingNeeds;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPaddingNeeds ? 40.0 : 0,
          ),
          child: const Divider(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 100.0,
            horizontal: horizontalPaddingNeeds ? 40.0 : 0,
          ),
          child: Row(
            children: [
              Text(
                ' © ${DateTime.now().year} THE GLOBAL IT INNOVATION',
                style: TextStyles.style22w700M(
                  Palette().textColor(),
                ),
              ),
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: () => context.go('/privacy_policy'),
                child: Text(
                  'Privacy Policy',
                  style: TextStyles.style22w700M(
                    Palette().textColor(),
                  ),
                ),
              ),
              const SizedBox(width: 70),
              InkWell(
                onTap: () => context.go('/terms_of_use'),
                child: Text(
                  'Terms of use',
                  style: TextStyles.style22w700M(
                    Palette().textColor(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
