import 'package:domen/features/privaci_policy.dart';
import 'package:domen/features/terms_of_use/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';

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
                  AppColor.primaryBlack,
                ),
              ),
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PrivacyPolicy.route(),
                  );
                },
                child: Text(
                  'Privacy Policy',
                  style: TextStyles.style22w700M(
                    AppColor.primaryBlack,
                  ),
                ),
              ),
              const SizedBox(width: 70),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    TermsOfUse.route(),
                  );
                },
                child: Text(
                  'Terms of use',
                  style: TextStyles.style22w700M(
                    AppColor.primaryBlack,
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
