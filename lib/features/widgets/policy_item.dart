import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:flutter/material.dart';

class PolicyItem extends StatelessWidget {
  const PolicyItem({super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyles.style36w700M(
          Palette().linkText(),
          4,
        ),
        children: [
          TextSpan(
            text: content,
            style: TextStyles.style18w400M(
              Palette().textColor(),
            ),
          ),
        ],
      ),
    );
  }
}
