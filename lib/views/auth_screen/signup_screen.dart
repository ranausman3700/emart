import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:emart/widgets_common/bg_widget.dart';
import 'package:emart/widgets_common/button.dart';
import 'package:emart/widgets_common/custom_textfeild.dart';
import 'package:emart/consts/consts.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            15.heightBox,
            "join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(
                  title: name,
                  hint: nameHint,
                ),
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                customTextField(
                  title: password,
                  hint: retypePassword,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.make(),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.deepOrange,
                      checkColor: Colors.white,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: deepOrange),
                            ),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                  fontFamily: regular, color: deepOrange),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                  color: isCheck == true ? deepOrange : lightGrey,
                  title: signup,
                  textColor: whiteColor,
                  onPress: () {},
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(deepOrange).make().onTap(() {
                      Get.back();
                    }),
                    // RichText(
                    //   text: const TextSpan(
                    //     children: [
                    //       TextSpan(
                    //         text: alreadyHaveAccount,
                    //         style:
                    //             TextStyle(fontFamily: regular, color: fontGrey),
                    //       ),
                    //       TextSpan(
                    //         text: login,
                    //         style: TextStyle(
                    //             fontFamily: regular, color: deepOrange),
                    //       ),
                    //     ],
                    //   ),
                    // ).onTap(() {
                    //   Get.back();
                    // }),
                  ],
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
