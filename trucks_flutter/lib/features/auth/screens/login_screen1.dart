import 'package:flutter/material.dart';

import '/features/auth/components/custom_textfield.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../components/custom_button.dart';
import '/constants/styles.dart';

import '../../../utils/responsiveness.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controllers
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  // forgot password method
  void forgotPassword() {}

  // register user in method
  void registerUser() {}

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? const SizedBox()
                : Expanded(
                    child: Container(
                      height: height,
                      color: AppColors.mainBlueColor,
                      child: Center(
                        child: Text(
                          'Truck Ai',
                          style: ralewayStyle.copyWith(
                            fontSize: 48.0,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
            Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isSmallScreen(context)
                        ? height * 0.032
                        : height * 0.12),
                color: AppColors.backColor,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.2),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Let’s',
                                style: ralewayStyle.copyWith(
                                  fontSize: 25.0,
                                  color: AppColors.blueDarkColor,
                                  fontWeight: FontWeight.normal,
                                )),
                            TextSpan(
                              text: ' Sign In 👇',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.blueDarkColor,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'Enter your details to get signed into your account.',
                        style: ralewayStyle.copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: height * 0.064),
                      // phone number textfield
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Phone number',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      CustomTextField(
                        controller: phoneNumberController,
                        hintText: 'Enter Phone Number',
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                      ),
                      // SizedBox(height: height * 0.025),
                      // password textfield
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Password',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      CustomTextField(
                        controller: passwordController,
                        hintText: 'Enter Password',
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      // const SizedBox(height: 6.0),
                      // Container(
                      //   height: 50.0,
                      //   width: width,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(16.0),
                      //     color: AppColors.whiteColor,
                      //   ),
                      //   child: TextFormField(
                      //     style: ralewayStyle.copyWith(
                      //       fontWeight: FontWeight.w400,
                      //       color: AppColors.blueDarkColor,
                      //       fontSize: 12.0,
                      //     ),
                      //     keyboardType: TextInputType.phone,
                      //     decoration: InputDecoration(
                      //       border: InputBorder.none,
                      //       prefixIcon: IconButton(
                      //         onPressed: () {},
                      //         // icon: SvgPicture.asset(AppIcons.phoneIcon,
                      //         // color: AppColors.blueDarkColor),
                      //         // icon: Icons.phone_android_sharp,
                      //         icon: Icon(Icons.phone_android_sharp),
                      //       ),
                      //       contentPadding: const EdgeInsets.only(top: 16.0),
                      //       hintText: 'Enter Phone Number',
                      //       hintStyle: ralewayStyle.copyWith(
                      //         fontWeight: FontWeight.w400,
                      //         color: AppColors.blueDarkColor.withOpacity(0.5),
                      //         fontSize: 12.0,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(height: 6.0),
                      // Container(
                      //   height: 50.0,
                      //   width: width,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(16.0),
                      //     color: AppColors.whiteColor,
                      //   ),
                      //   child: TextFormField(
                      //     style: ralewayStyle.copyWith(
                      //       fontWeight: FontWeight.w400,
                      //       color: AppColors.blueDarkColor,
                      //       fontSize: 12.0,
                      //     ),
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //       border: InputBorder.none,
                      //       suffixIcon: IconButton(
                      //         onPressed: () {},
                      //         // icon: SvgPicture.asset(AppIcons.visibilityOnIcon),
                      //         icon: Icon(Icons.visibility_off_sharp),
                      //       ),
                      //       prefixIcon: IconButton(
                      //         onPressed: () {},
                      //         // icon: SvgPicture.asset(AppIcons.lockIcon),
                      //         icon: Icon(Icons.lock_outline_sharp),
                      //       ),
                      //       contentPadding: const EdgeInsets.only(top: 16.0),
                      //       hintText: 'Enter Password',
                      //       hintStyle: ralewayStyle.copyWith(
                      //         fontWeight: FontWeight.w400,
                      //         color: AppColors.blueDarkColor.withOpacity(0.5),
                      //         fontSize: 12.0,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // forgot password
                      SizedBox(height: height * 0.03),
                      GestureDetector(
                        onTap: forgotPassword,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: AppColors.blueDarkColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      // sign in button
                      SizedBox(height: height * 0.05),
                      CustomButton(
                        buttonText: 'Sign In',
                        onTap: signUserIn,
                      ),
                      SizedBox(height: height * 0.03),
                      GestureDetector(
                        onTap: registerUser,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Not a member? ',
                              style: ralewayStyle.copyWith(
                                fontSize: 12.0,
                                color: AppColors.blueDarkColor,
                              ),
                            ),
                            SizedBox(height: width * 0.03),
                            Text(
                              'Register now',
                              style: ralewayStyle.copyWith(
                                fontSize: 12.0,
                                color: AppColors.mainBlueColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
