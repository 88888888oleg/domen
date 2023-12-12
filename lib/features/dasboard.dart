import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ghostWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColor.primaryWhite,
        title: Center(
          child: Row(
            children: [
              const SizedBox(width: 40),
              Image.asset(Assets.png.logo.path, width: 56, height: 56),
              const SizedBox(width: 8),
              Text(
                'THE GLOBAL IT\nINNOVATIONS',
                textAlign: TextAlign.center,
                style: TextStyles.style22w400N(AppColor.mainBlue),
              ),
              const Expanded(child: SizedBox()),
              Text(
                'About Us',
                style: TextStyles.style22w700M(AppColor.mainBlue),
              ),
              const SizedBox(width: 100),
              Text(
                'Our Products',
                style: TextStyles.style22w700M(AppColor.mainBlue),
              ),
              const SizedBox(width: 100),
              Text(
                'Contact Us',
                style: TextStyles.style22w700M(AppColor.mainBlue),
              ),
              const Expanded(child: SizedBox()),
              Container(
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Material(
              elevation: 20,
              child: Container(
                width: 1512,
                height: 780,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.png.header.path),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 88,
                    ),
                    child: SizedBox(
                      width: 570,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Software\nDevelopment\nCompany',
                            style: TextStyles.style64w700M(
                              AppColor.primaryBlack,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Expanded(
                            child: Text(
                              'Empowering businesses through cutting-edge software solutions, we bring your ideas to life with expertise, precision, and a commitment to excellence in every line of code',
                              style: TextStyles.style23w400M(
                                AppColor.primaryBlack,
                              ),
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColor.mainBlue,
                              ),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 40,
                              ),
                              child: Text(
                                'Get In Touch',
                                style: TextStyles.style22w700M(
                                  AppColor.mainBlue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100),
              child: Row(
                children: [
                  Image.asset(Assets.png.leftPic.path),
                  const SizedBox(
                    width: 80,
                  ),
                  Expanded(
                    child: Text(
                      'We are a team of professionals that create bespoke software products, ensure high quality through testing and maintenance. Our expertise includes consulting, analysis, integration, and API development. We offer support and custom development, helping your business leverage modern technologies effectively.',
                      style: TextStyles.style28w400MItalic(
                        AppColor.mainBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SizedBox(
                height: 400,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _IconCard(
                      iconPatch: Assets.svg.card1,
                      text:
                          'We are a team of professionals that create bespoke software products, ensure high quality through testing and maintenance. Our expertise includes consulting, analysis, integration, and API development. We offer support and custom development, helping your business leverage modern technologies effectively.',
                    ),
                    const SizedBox(width: 100),
                    _IconCard(
                      iconPatch: Assets.svg.card2,
                      text:
                          'Agile Development Approach: We prioritize agile development methodologies to ensure efficient project management, timely delivery, and ongoing collaboration, enabling us to effectively bring your vision to reality.',
                    ),
                    const SizedBox(width: 100),
                    _IconCard(
                      iconPatch: Assets.svg.card3,
                      text:
                          'We specialize in website and mobile application development using Flutter technology, focusing on crafting innovative, mobile-responsive websites with attractive designs and ensuring high performance and smooth user interactions.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Text(
                'Our Services',
                style: TextStyles.style64w700M(
                  AppColor.mainBlue,
                ),
              ),
            ),
            _ServiceItem(
              title:
                  'Mobile application development services for IOS and Android platforms using flutter',
              iconPatch: Assets.svg.illustration1,
            ),
            _ServiceItem(
              title: 'Software Testing  & QA',
              iconPatch: Assets.svg.illustration2,
              isLeft: false,
            ),
            _ServiceItem(
              title: 'Web App development services',
              iconPatch: Assets.svg.illustration3,
            ),
            _ServiceItem(
              title: 'UI/UX Design',
              iconPatch: Assets.svg.illustration4,
              isLeft: false,
            ),
            SizedBox(height: 70),
            Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 100.0, horizontal: 40),
              child: Row(
                children: [
                  Text(
                    ' © 2023 THE GLOBAL IT INNOVATION',
                    style: TextStyles.style22w700M(
                      AppColor.primaryBlack,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    'Privacy Policy',
                    style: TextStyles.style22w700M(
                      AppColor.primaryBlack,
                    ),
                  ),
                  SizedBox(width: 70),
                  Text(
                    'Terms of use',
                    style: TextStyles.style22w700M(
                      AppColor.primaryBlack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  const _ServiceItem({
    required this.title,
    required this.iconPatch,
    this.isLeft = true,
  });
  final String title;
  final String iconPatch;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: isLeft ? 40.0 : 60, right: isLeft ? 60 : 40),
      child: isLeft
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TextCard(
                  text: title,
                ),
                SvgPicture.asset(iconPatch),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(iconPatch),
                _TextCard(
                  text: title,
                ),
              ],
            ),
    );
  }
}

class _IconCard extends StatelessWidget {
  const _IconCard({required this.iconPatch, required this.text});
  final String iconPatch;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: SizedBox(
        width: 400,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SvgPicture.asset(
                iconPatch,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: TextStyles.style22w400MItalic(AppColor.mainBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextCard extends StatelessWidget {
  const _TextCard({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: SizedBox(
        width: 660,
        height: 240,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54.0),
            child: Text(
              text,
              style: TextStyles.style32w700M(AppColor.mainGray),
            ),
          ),
        ),
      ),
    );
  }
}
