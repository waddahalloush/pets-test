import 'package:flutter/material.dart';
import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Core/Utils/app_router.dart';
import 'package:test/Core/Utils/assets_manager.dart';
import 'package:test/Presintation/Widgets/auth_buttons.dart';
import 'package:test/Presintation/Widgets/auth_text_form_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: formstate,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.startImage,
                  height: 100,
                  width: 100,
                ),
              ),
              const Text(
                "PETS MEDICAL CENTER",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter your email and password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AuthFormField(
                label: "Phone Number",
                picon: Icons.mail,
                textInputType: TextInputType.phone,
                controller: phoneController,
                validat: (val) {
                  if (val!.isEmpty) {
                    return "Email Address too Short";
                  } else {
                    return null;
                  }
                },
                inputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthFormField(
                label: "Password",
                picon: Icons.lock_open,
                textInputType: TextInputType.visiblePassword,
                controller: passwordController,
                validat: (val) {
                  if (val!.length < 4) {
                    return "This Password is too Short";
                  } else {
                    return null;
                  }
                },
                inputAction: TextInputAction.done,
                obsecure: true,
                sicon: const Icon(Icons.visibility_off),
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButtons(
                  btnColor: AppColors.loginBtn,
                  btnText: "Log In",
                  onPress: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (formstate.currentState!.validate()) {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRouter.mainPage);
                    }
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRouter.signup);
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
