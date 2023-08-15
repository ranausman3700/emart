import 'package:emart/consts/list.dart';
import 'package:emart/views/auth_screen/signup_screen.dart';
import 'package:emart/views/home/home.dart';
import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:emart/widgets_common/bg_widget.dart';
import 'package:emart/widgets_common/button.dart';
import 'package:emart/widgets_common/custom_textfeild.dart';
import 'package:get/get.dart';
import 'package:emart/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "login to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.make(),
                  ),
                ),
                5.heightBox,
                ourButton(
                  color: deepOrange,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAcount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                  color: lightGolden,
                  title: signup,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const SignupScreen());
                  },
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
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
