// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Core/Utils/assets_manager.dart';
import 'package:test/Presintation/Widgets/add_pet_form_field.dart';

import '../Widgets/SharedWidgets/custom_add_button.dart';
import '../Widgets/choose_pet_widget.dart';
import '../Widgets/pet_photo_form.dart';

class AddPets extends StatelessWidget {
  const AddPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController petNameController = TextEditingController();
    TextEditingController petBearthController = TextEditingController();
    TextEditingController petBreedController = TextEditingController();
    TextEditingController petHealthController = TextEditingController();
    TextEditingController petLicenseController = TextEditingController();
    TextEditingController petElectronicController = TextEditingController();
    TextEditingController petNotsController = TextEditingController();
    TextEditingController petParasiteController = TextEditingController();
    TextEditingController petViralVaccineController = TextEditingController();
    TextEditingController petRabiesVaccineController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    List<String> petSex = ["Female", "Male"];
    String? selectedPetSex = "Female";
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ))),
                const Spacer(),
                const Text(
                  "Add Pet",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const Spacer(),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AssetsManager.trach,
                        ))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Choose Your Pet",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoosePetWidget(
                    petImage: AssetsManager.chooseCat, petType: "CAT"),
                const SizedBox(
                  width: 20,
                ),
                ChoosePetWidget(
                  petImage: AssetsManager.chooseDog,
                  petType: "DOG",
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddPetsFormField(
                  controller: petNameController,
                  hint: "Lea Leonardo",
                  label: "Name",
                  inputAction: TextInputAction.next,
                  submit: (val) => FocusScope.of(context).nextFocus(),
                  inputType: TextInputType.name,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              label: Text(
                                "Sex",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
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
                            onChanged: (String? val) => selectedPetSex = val)),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: AddPetsFormField(
                        controller: petBearthController,
                        inputType: TextInputType.datetime,
                        hint: "18 - 6 - 2022",
                        label: "Day Of Bearth",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: AddPetsFormField(
                        controller: petBreedController,
                        inputType: TextInputType.name,
                        hint: "Insert Pets Breed",
                        label: "Breed",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: AddPetsFormField(
                        controller: petHealthController,
                        inputType: TextInputType.datetime,
                        hint: "Insert Book Number",
                        label: "Health Book Number",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: AddPetsFormField(
                        controller: petLicenseController,
                        inputType: TextInputType.name,
                        hint: "Insert Licence Number",
                        label: "Licence Number",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: AddPetsFormField(
                        controller: petBreedController,
                        inputType: TextInputType.datetime,
                        hint: "Breed ",
                        label: "Insert Pets Breed",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: AddPetsFormField(
                        controller: petElectronicController,
                        inputType: TextInputType.name,
                        hint: "Electronic Chip Number",
                        label: "Electronic Chip Number",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: AddPetsFormField(
                        controller: petNotsController,
                        inputType: TextInputType.datetime,
                        hint: "Insert A Nots",
                        label: "Nots",
                        inputAction: TextInputAction.next,
                        submit: (val) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "Main Photo",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "Another Photos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(child: PetPhotoForm()),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: PetPhotoForm()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.outBorder),
                      borderRadius: BorderRadius.circular(3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Parasite Bill",
                        style: TextStyle(
                            color: AppColors.outBorder,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AddPetsFormField(
                          label: "",
                          hint: "Last dose Date",
                          controller: petParasiteController,
                          inputAction: TextInputAction.done,
                          inputType: TextInputType.name)
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.outBorder),
                      borderRadius: BorderRadius.circular(3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Vaccines",
                        style: TextStyle(
                            color: AppColors.outBorder,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AddPetsFormField(
                          label: "Viral Disease Vaccine",
                          hint: "Last dose Date",
                          controller: petViralVaccineController,
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.name),
                      const SizedBox(
                        height: 5,
                      ),
                      AddPetsFormField(
                          label: "Rabies Vaccine",
                          hint: "Last dose Date",
                          controller: petRabiesVaccineController,
                          inputAction: TextInputAction.done,
                          inputType: TextInputType.name),
                    ],
                  ),
                )),
              ],
            ),
            CustomAddButton(size: size,text:  "Add Pet",ontap: (){}),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

