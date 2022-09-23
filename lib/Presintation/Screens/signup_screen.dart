import 'package:flutter/material.dart';
import 'package:test/Presintation/Widgets/auth_buttons.dart';

import '../../Core/Utils/app_colors.dart';
import '../../Core/Utils/app_router.dart';
import '../../Core/Utils/assets_manager.dart';
import '../Widgets/auth_text_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    List<String> petSex = ["Female", "Male"];
    String? selectedPetSex = "Female";
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
                  "Sign Up",
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
                  "Enter your credentials to continue",
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
                label: "Name",
                picon: Icons.person,
                textInputType: TextInputType.name,
                controller: nameController,
                validat: (val) {
                  if (val!.isEmpty) {
                    return "Your Name can't Be Empty";
                  } else {
                    return null;
                  }
                },
                inputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 5,
              ),
              AuthFormField(
                label: "Address",
                picon: Icons.home,
                textInputType: TextInputType.name,
                controller: addressController,
                validat: (val) {
                  if (val!.isEmpty) {
                    return "Your Address can't Be Empty";
                  } else {
                    return null;
                  }
                },
                inputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.male),
                      labelText: "Gender",
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(3),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                      floatingLabelAlignment: FloatingLabelAlignment.center),
                  value: selectedPetSex,
                  items: petSex
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (String? val) => selectedPetSex = val),
              const SizedBox(
                height: 5,
              ),
              AuthFormField(
                label: "Phone Number",
                picon: Icons.mail,
                textInputType: TextInputType.phone,
                controller: phoneController,
                validat: (val) {
                  if (val!.isEmpty) {
                    return "Phone Number too Short";
                  } else {
                    return null;
                  }
                },
                inputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 5,
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
                height: 5,
              ),
              AuthButtons(
                  btnColor: AppColors.loginBtn,
                  btnText: "Sign Up",
                  onPress: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (formstate.currentState!.validate()) {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRouter.login);
                    }
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRouter.login);
                    },
                    child: const Text(
                      "Login",
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
