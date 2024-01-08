import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/features/widgets/footer.dart';
import 'package:domen/features/widgets/main_app_bar.dart';
import 'package:domen/features/widgets/policy_item.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const PrivacyPolicy());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Palette().secondaryBackground(),

        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1512),
          child: Scaffold(
            backgroundColor: Palette().secondaryBackground(),
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
                    'Privacy Policy',
                    style: TextStyles.style72w700M(
                      Palette.mainBlue,
                    ),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          PolicyItem(
                            title: 'Your privacy is important to us.\n',
                            content:
                                'The Global IT Innovations has created this Privacy Policy in line with The Global IT Innovations’s commitment to your privacy on The Global IT Innovations websites. The following discloses The Global IT Innovations\'s information gathering, dissemination and protection practices.   By getting access to the website or using it, you agree to the terms of the Privacy Policy of this website. This document applies to all information that you provide to us, including but not limited to contact form, questions, feedback, comments and suggestions, collection and use of personal information that you can provide to us as a result of your activities on this website.   You can opt out of our data requests or not accept our Policy, but you should understand that in this case, The Global IT Innovations may not be able to provide certain services and you can not use our site.   The Global IT Innovations reserves the right to modify or amend this Privacy Policy at its own discretion from time to time. The changes can be tracked on this website. Your subsequent use of The Global IT Innovations website constitutes your acceptance of those changes. ',
                          ),
                          PolicyItem(
                            title: 'PERSONAL DATA LIST \n',
                            content:
                                'Personal data is any information related to an identified or identifiable individual (data-subject), with the help of which the individual can be determined directly or indirectly. Such information includes, inter alia, name, location, online identifier or one or more factors specific to the physical, physiological, genetic, intellectual, economic, cultural or social identity of the individual (Clause 1, Article 4).',
                          ),
                          PolicyItem(
                            title:
                                'The Global IT Innovations collects information: \n',
                            content:
                                '• information you affirmatively choose to submit to us (such as your name, email address, company name, title, country, telephone) for the purpose of accessing various downloads, viewing specific content, subscribing to The Global IT Innovations newsletters and your preferences in receiving marketing from The Global IT Innovations and its third-party partners and your communication preferences, etc.;   • information The Global IT Innovations receives from your use of The Global IT Innovations websites, such as the IP address, browser type, ISP, referring/exit pages, platform type, date/time stamp, number of clicks, domain name and country/state of all visitors to The Global IT Innovations\'s websites;   • location information when you use The Global IT Innovations\'s websites as The Global IT Innovations may collect and process information about your location. The Global IT Innovations uses «google analytics» to determine location;   • information that is considered as aggregated data such as statistical or demographic data which The Global IT Innovations may use for any purpose. Aggregated data may be derived from your personal information but is not considered personal information in law as it does not directly or indirectly reveal your identity, unless The Global IT Innovations combines or connects aggregated data with your personal information so that it can directly or indirectly identify you;   • The Global IT Innovations collects technical data from various third parties and public sources as, such as: analytics providers, advertising networks, search information providers etc.   Other than as required by law, The Global IT Innovations websites do not collect any special categories of personal information about you (this includes details about your race or ethnicity, religious or philosophical beliefs, sex life, sexual orientation, political opinions, trade union membership, information about your health and genetic and biometric data). The Global IT Innovations will not collect any information about criminal convictions and offenses. ',
                          ),
                          PolicyItem(
                            title: 'PURPOSE OF PERSONAL DATA COLLECTION\n',
                            content:
                                'The Global IT Innovations collects information to provide better services to its users and to understand better the visitors to its websites and what content is of interest to them.   The Global IT Innovations will only use your personal information for the purposes for which it was collected, unless it reasonably considers that it is needed to be used for another reason that is compatible with the original purpose. If The Global IT Innovations needs to use your personal information for an unrelated purpose, The Global IT Innovations will notify you, ask permission and explain the legal basis which allows The Global IT Innovations to do so. ',
                          ),
                          PolicyItem(
                            title: 'INFORMATION EXCHANGE\n',
                            content:
                                'All the personal data is processed by our staff.   However, The Global IT Innovations may disclose your personal information to the following categories of recipients within the framework of the original purpose:   • to its group companies, party services providers and partners who provide data including processing services to The Global IT Innovations (for example, to support the delivery of, provide functionality on, or help to enhance the security of website).   • to any competent law enforcement body, regulatory, government agency, court or other third party where The Global IT Innovations believes disclosure is necessary (a) as a matter of applicable law or regulation, (b) to exercise, establish or defend its legal rights, or (c) to protect your vital interests or those of any other person.   • to any other person with your consent to the disclosure.   No other 3rd parties have access to your personal data unless the law allows them to do so. ',
                          ),
                          PolicyItem(
                            title: 'USE OF INFORMATION \n',
                            content:
                                'Any information collected by The Global IT Innovations will be used in accordance with this Privacy Policy for the purposes of making better business decisions, supporting the activities you choose to engage in, and providing higher quality solutions and services to The Global IT Innovations\'s customers. The Global IT Innovations uses your location information to tailor your experience with The Global IT Innovations websites. It may also use any non-personal information collected to enhance The Global IT Innovations website and your IP address for website diagnostics and administration. The Global IT Innovations will only retain your personal information for as long as necessary to fulfill the purposes it was collected for, including for the purposes of satisfying any legal, accounting, or reporting requirements, but, no more than 1 (one) year from the date of filling in the form on the The Global IT Innovations website.   The Global IT Innovations processes information on servers in many countries around the world and you consent to your personal information being processed on a server located outside the country in which you reside. These countries may have data protection laws that are different to the laws of your country (and, in some cases, may not be as protective). However, The Global IT Innovations has taken appropriate precautions to require that your personal information will remain protected in accordance with this Privacy Policy, including the use of the current European legislation on data protection (including GDPR), which requires all companies to protect personal information processed from the European Economic Area. ',
                          ),
                          PolicyItem(
                            title: 'INFORMATION SECURITY \n',
                            content:
                                'We have put in place appropriate security measures to prevent your personal information from being accidentally lost, used or accessed in an unauthorized way, altered or disclosed.   For example, we store your personal information on secure servers, which are accessible only to exceptional individuals. We are trying to prevent access by any unauthorized parties by encrypting this information.   In addition, we limit access to your personal information to those employees, contractors and third parties who have a business need to know. They will only process your personal information on our instructions and they are subject to a duty of confidentiality. All our employees and contractors sign a confidentiality agreement before they begin to work with us and must comply with all of our privacy policies. We are not responsible for the fact that the event occurred because of unauthorized access to your personal information.   We have put in place procedures to deal with any suspected data security breach and will notify you and any applicable regulator of a suspected breach where we are legally required to do so.',
                          ),
                          PolicyItem(
                            title: 'LINKS\n',
                            content:
                                'The Global IT Innovations website can contain links, plug-ins, and applications to various third-party websites. Clicking on those links or enabling those connections may allow third parties to collect or share data about you. The Global IT Innovations has no control over and is not responsible for the content, privacy policies or reliability of such third party connections. When you leave The Global IT Innovations\'s website, The Global IT Innovations encourages you to read the privacy notice and privacy policy of every website you visit. ',
                          ),
                          PolicyItem(
                            title: 'YOUR DATA PROTECTION RIGHTS \n',
                            content:
                                'If your personal information is protected by GDPR, you have the following data protection rights which you may be able to exercise by contacting The Global IT Innovations using the contact details provided under the "Contact Details":   • If you wish to access, correct, update or request deletion of your personal information, you can do so at any time by contacting The Global IT Innovations.   • In addition, you can object to the processing of your personal information, ask The Global IT Innovations to restrict processing of your personal information or request portability of your personal information by contacting The Global IT Innovations.   • You have the right to opt out of marketing communications that The Global IT Innovations sends you at any time. You can exercise this right by clicking on the "unsubscribe" or "opt-out" link in the marketing emails The Global IT Innovations sends you or by using the relevant opt-out mechanism for non-email based marketing.   You have the right to request confirmation of the fact of processing your data, the place and purpose of the processing, the categories of personal data being processed, information about third parties to which your personal data is disclosed, the period during which the data will be processed, and the source of receipt of personal data;   • Similarly, if The Global IT Innovations has collected and processed your personal information based on your consent, then you can withdraw your consent at any time. Withdrawing your consent will not affect the lawfulness of any data processing, which The Global IT Innovations has conducted prior to your withdrawal, nor will it affect processing of your personal information, which has been conducted in reliance on lawful processing grounds other than consent.   If you wish to raise a complaint about how we have handled your personal data, you can contact our Data Protection Officer who will investigate the matter. If you are not satisfied with our response or believe we are processing your personal data not in accordance with the law you can complain to the Personal Data Protection Organization.   We may need to request specific information from you to help us confirm your identity and ensure your right to access the information (or to exercise any of your other rights). This is another appropriate security measure to ensure that personal information is not disclosed to any person who has no right to receive it. You will not have to pay a fee to access your personal information (or to exercise any of the other rights). However, The Global IT Innovations may charge a reasonable fee or refuse to comply with your request if your request is clearly unfounded, repetitive or excessive. The Global IT Innovations tries to respond to all legitimate requests within 72 hours of receipt. Occasionally, it may take longer if your request is particularly complex or you have made a number of requests. In this case, The Global IT Innovations will notify you and keep you updated. ',
                          ),
                          PolicyItem(
                            title: 'COOKIES\n',
                            content:
                                'Cookies are a technology used by most sites online to collect and store information about the user. A cookie is a data transferred by the site to your hard drive for record-keeping purposes. They are an industry standard.   PLEASE NOTE: Most browsers allow you to deny or accept cookies, so it is your choice to allow us to use this technology \'cookies\'. If you do not accept cookies some of our online services and features may be affected.   The Global IT Innovations uses cookies to collect information and activity on our site. Cookies are only used to help provide services and can be refused by changing your browser settings. Please understand that The Global IT Innovations may be unable to offer certain services if this option is chosen. This agreement is between our website and your computer - we cannot guarantee cookies used by advertisers.   Read our Cookie Policy to learn more. ',
                          ),
                          PolicyItem(
                            title: 'CONTACT INFORMATION \n',
                            content:
                                'It is important that the personal information The Global IT Innovations holds about you is accurate and current. Please keep The Global IT Innovations informed if your personal information changes during your relationship with The Global IT Innovations. Additionally, if you have any questions about this Privacy Policy, the practices of The Global IT Innovations website or your interaction with The Global IT Innovations via a website, please contact theglobalitinnovation@gmail.com.',
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
      ),
    );
  }
}
