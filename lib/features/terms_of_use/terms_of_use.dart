import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/features/widgets/footer.dart';
import 'package:domen/features/widgets/main_app_bar.dart';
import 'package:domen/features/widgets/policy_item.dart';
import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const TermsOfUse());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1512),
        child: Scaffold(
          backgroundColor: AppColor.ghostWhite,
          appBar: const MainAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Terms of Use',
                  style: TextStyles.style72w700M(
                    AppColor.mainBlue,
                  ),
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PolicyItem(
                          title: 'Acceptance of Terms\n',
                          content:
                              'Welcome to GlobalItInnovations. We provide software development services and products subject to the following Terms of Use ("Terms"). By accessing and using our website or any applications (together, "Services"), you agree to comply with and be bound by these Terms. If you do not agree to these Terms, please do not use our Services.',
                        ),
                        PolicyItem(
                          title: 'Use of Services \n',
                          content:
                              'The Services we provide are for your personal and non-commercial use, unless otherwise specified. You may not use the Services for any illegal purpose. You agree to use the Services only for lawful purposes and comply with all applicable laws and regulations.',
                        ),
                        PolicyItem(
                          title: 'Intellectual Property Rights\n',
                          content:
                              'All content included in the Services, such as text, graphics, logos, images, as well as the compilation thereof, and any software used on the site, is our property or the property of our suppliers and protected by copyright and intellectual property rights laws.',
                        ),
                        PolicyItem(
                          title: 'User Conduct\n',
                          content:
                              'You agree not to interfere with or disrupt the Services or servers or networks connected to the Services. You agree not to reproduce, duplicate, copy, sell, resell, or exploit any portion of the Services without express written permission by us.',
                        ),
                        PolicyItem(
                          title: 'Disclaimers\n',
                          content:
                              'We disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose. We do not guarantee that the Services will be uninterrupted, timely, secure, or error-free.',
                        ),
                        PolicyItem(
                          title: 'Limitation of Liability\n',
                          content:
                              'In no event shall we be liable for any direct, indirect, incidental, special, consequential, or exemplary damages, including but not limited to damages for loss of profits, goodwill, use, data, or other intangible losses resulting from the use or the inability to use the Services.',
                        ),
                        PolicyItem(
                          title: 'Modification of Terms\n',
                          content:
                              'We reserve the right to change or modify these Terms at any time. Your continued use of the Services following any changes or modifications constitutes your acceptance of the new Terms.',
                        ),
                        PolicyItem(
                          title: 'Governing Law\n',
                          content:
                              'These Terms shall be governed by and construed in accordance with the laws of Your Country, without giving effect to any principles of conflicts of law.',
                        ),
                        PolicyItem(
                          title: 'Contact Information \n',
                          content:
                              'If you have any questions about these Terms, please contact us at Contact Information.',
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Footer(
                          horizontalPaddingNeeds: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
