import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/features/widgets/footer.dart';
import 'package:domen/features/widgets/main_app_bar.dart';
import 'package:domen/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AboutUs());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Palette().secondaryBackground(),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1512, minWidth: 1512),
          child: Scaffold(
            backgroundColor: Palette().secondaryBackground(),
            appBar: const MainAppBar(),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 1512,
                    child: Row(
                      children: [
                        ClipRect(
                          child: Align(
                            alignment: Alignment.centerRight,
                            widthFactor: 0.5,
                            child: ClipOval(
                              child: Image.asset(
                                Assets.png.city.path,
                                width: 1000,
                                height: 1000,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Gap(200),
                        Expanded(
                          child: Text(
                            'We are a team of professionals that create bespoke software products, ensure high quality through testing and maintenance. Our expertise includes consulting, analysis, integration, and API development. We offer support and custom development, helping your business leverage modern technologies effectively.',
                            style: TextStyles.style36w700MIt(
                              Palette().linkText(),
                            ),
                          ),
                        ),
                        const Gap(40),
                      ],
                    ),
                  ),
                  const Gap(150),
                  _AvatarsTile(
                    imagePatch: Assets.png.flutterAvatar.path,
                    title: 'Senior Flutter Engineer',
                    subTitle:
                        'Experienced Flutter Engineer proficient in crafting cross-platform mobile apps with Dart. Strong project management and team leadership skills.',
                  ),
                  const Gap(100),
                  _AvatarsTile(
                    imagePatch: Assets.png.uiUxAvatar.path,
                    isLeft: false,
                    title: 'UI/UX Designer',
                    subTitle:
                        'Skilled UI/UX Designer focused on creating intuitive and engaging user interfaces. Expertise in user-centered design principles and prototyping.',
                  ),
                  const Gap(100),
                  _AvatarsTile(
                    imagePatch: Assets.png.qaAvatar.path,
                    title: 'QA Engineer',
                    subTitle:
                        'Detail-oriented QA Engineer with expertise in test automation, performance testing, and ensuring the highest quality standards for software products.',
                  ),
                  const Gap(100),
                  _AvatarsTile(
                    imagePatch: Assets.png.financeAvatar.path,
                    isLeft: false,
                    title: 'Finance Director',
                    subTitle:
                        'Strategic Finance Director with a strong background in financial planning, budget management, and economic analysis to drive company growth.',
                  ),
                  const Gap(100),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarsTile extends StatelessWidget {
  const _AvatarsTile({
    required this.imagePatch,
    required this.title,
    required this.subTitle,
    this.isLeft = true,
  });
  final String imagePatch;
  final String title;
  final String subTitle;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Row(
            children: [
              const Gap(40),
              Image.asset(
                imagePatch,
                width: 328,
                height: 328,
                fit: BoxFit.cover,
              ),
              const Gap(242),
              _AvatarCardText(title: title, subTitle: subTitle),
              const Gap(40),
            ],
          )
        : Row(
            children: [
              const Gap(40),
              _AvatarCardText(title: title, subTitle: subTitle),
              const Gap(242),
              Image.asset(
                imagePatch,
                width: 328,
                height: 328,
                fit: BoxFit.cover,
              ),
              const Gap(40),
            ],
          );
  }
}

class _AvatarCardText extends StatelessWidget {
  const _AvatarCardText({required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.style54w400M(
              Palette().textColor(),
            ),
          ),
          const Gap(40),
          Text(
            subTitle,
            style: TextStyles.style44w200M(
              Palette().textColor(),
            ),
          ),
        ],
      ),
    );
  }
}
