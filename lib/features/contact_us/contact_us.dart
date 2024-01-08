import 'package:domen/config/app_color.dart';
import 'package:domen/config/text_styles.dart';
import 'package:domen/features/widgets/footer.dart';
import 'package:domen/features/widgets/main_app_bar.dart';
import 'package:domen/generated_assets/assets.gen.dart';
import 'package:domen/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  static route() {
    return MaterialPageRoute(
      builder: (context) => const ContactUs(),
    );
  }

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _messageController;
  bool checked = false;
  bool isMessageSend = false;
  bool _emailValidity = false;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _messageController = TextEditingController();
    _emailController.addListener(_emailListener);
    super.initState();
  }

  void _emailListener() {
    if (_emailController.text.isNotEmpty) {
      setState(() {
        _emailValidity = _emailController.text.isValidEmail;
      });
    }
  }

  bool _isAllActive() {
    return _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _messageController.text.isNotEmpty &&
        checked &&
        _emailValidity;
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
            appBar: const MainAppBar(contactNeeds: false),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    const SizedBox(height: 184),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  MainForm(
                                    controller: _firstNameController,
                                    labelText: 'First name *',
                                    onChanged: () {
                                      setState(() {});
                                    },
                                  ),
                                  const SizedBox(width: 64),
                                  MainForm(
                                    controller: _lastNameController,
                                    labelText: 'Last name *',
                                    onChanged: () {
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 64),
                              Row(
                                children: [
                                  MainForm(
                                    controller: _emailController,
                                    labelText: 'Email*',
                                    onChanged: () {
                                      setState(() {});
                                    },
                                  ),
                                  const SizedBox(width: 64),
                                  MainForm(
                                    isTelephone: true,
                                    controller: _phoneController,
                                    labelText: 'Phone number',
                                    onChanged: () {},
                                  ),
                                ],
                              ),
                              const SizedBox(height: 64),
                              MainForm(
                                maxLines: 4,
                                controller: _messageController,
                                labelText: 'Your Message*',
                                width: 940,
                                height: 166,
                                onChanged: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 58.0),
                              child: VerticalDivider(
                                color: Palette.lightGray.withOpacity(0.2),
                                width: 10,
                                thickness: 2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 439,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Let’s get in touch!',
                                      style: TextStyles.style48w700M(
                                        Palette.secondBlue,
                                      ),
                                    ),
                                    Text(
                                      'Prior to commencing, we aim to gain a deeper understanding of your requirements. We\'ll assess your application and arrange a complimentary estimation call.',
                                      textAlign: TextAlign.center,
                                      style: TextStyles.style23w400M(
                                        Palette().textColor(),
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 48.0),
                                  child: Divider(),
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contact info',
                                      style: TextStyles.style32w700M(
                                        Palette().textColor(),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          Assets.svg.flagPoland,
                                          width: 57,
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: Text(
                                            'Chmielna 85, 00-805 Warszawa',
                                            maxLines: 2,
                                            style: TextStyles.style23w400M(
                                              Palette().textColor(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Assets.svg.mail,
                                          width: 34,
                                            colorFilter: ColorFilter.mode(
                                                Palette().linkText(),
                                                BlendMode.srcIn,),
                                        ),
                                        const SizedBox(width: 42),
                                        Text(
                                          'theglobalitinnovation@gmail.com',
                                          style: TextStyles.style18w400M(
                                            Palette().textColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 67),
                    Row(
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: Palette().textColor(),
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: Transform.scale(
                            scale: 1.1,
                            child: Checkbox(
                              fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
                                if (!states.contains(MaterialState.selected)) {
                                  return Palette().textColor();
                                }
                                return null;
                              }),
                              checkColor: Palette().textColor(),
                              value: checked,
                              onChanged: (value) {
                                setState(() {
                                  checked = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Text(
                              'I accept the ',
                              style: TextStyles.style18w400M(
                                Palette().textColor(),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => context.go('/privacy_policy'),
                              child: Text(
                                'Privacy Policy',
                                style: TextStyles.style18w400M(
                                  Palette().linkText(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 64),
                    Row(
                      children: [
                        const SizedBox(
                          width: 297,
                        ),
                        if (!isMessageSend)
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: _isAllActive()
                                ? () async {
                                    isMessageSend = true;
                                    setState(() {});
                                    await Future.delayed(
                                      const Duration(seconds: 3),
                                    );
                                    if (mounted) {
                                      Navigator.popUntil(
                                        context,
                                        (route) => route.isFirst,
                                      );
                                    }
                                  }
                                : null,
                            child: Container(
                              width: 438,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: _isAllActive()
                                      ? Palette().linkText()
                                      : Palette.lightGray,
                                ),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 40,
                                ),
                                child: Center(
                                  child: Text(
                                    'Send  Message',
                                    style: TextStyles.style32w700M(
                                      _isAllActive()
                                          ? Palette().linkText()
                                          : Palette.lightGray,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        else
                          Text(
                            'Message send. Thank you!',
                            style: TextStyles.style32w700M(Palette.mainBlue),
                          ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    const Footer(horizontalPaddingNeeds: false),
                  ],
                ),
              ),
            ),
            // bottomNavigationBar: Footer(),
          ),
        ),
      ),
    );
  }
}

class MainForm extends StatelessWidget {
  const MainForm({
    super.key,
    required this.controller,
    this.maxLength = 255,
    required this.labelText,
    this.width = 438,
    this.height = 82,
    this.maxLines = 1,
    required this.onChanged,
    this.isTelephone = false,
  });

  final TextEditingController controller;
  final int maxLength;
  final String labelText;
  final double width;
  final double height;
  final int maxLines;
  final VoidCallback onChanged;
  final bool isTelephone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Center(
        child: TextFormField(
          inputFormatters: isTelephone
              ? [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9+()]')),
                ]
              : [],
          onChanged: (_) {
            onChanged();
          },
          maxLines: maxLines,
          controller: controller,
          maxLength: maxLength,
          decoration: InputDecoration(
            hoverColor: Colors.transparent,
            labelText: labelText,
            labelStyle: TextStyles.style22w400MItalic(Palette.lightGray),
            floatingLabelStyle: TextStyles.style12w600M(Palette.primaryBlack),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            counterText: "",
          ),
        ),
      ),
    );
  }
}
