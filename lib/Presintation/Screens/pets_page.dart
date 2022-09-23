// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test/Core/Utils/app_colors.dart';

import '../Widgets/Cart page Widgets/dot_controller.dart';
import '../Widgets/Pets Page Widgets/pet_info_container.dart';
import '../Widgets/Pets Page Widgets/pet_name_widgets.dart';
import '../Widgets/Pets Page Widgets/pet_services_widget.dart';
import '../Widgets/Pets Page Widgets/pets_date_widgets.dart';
import '../Widgets/Pets Page Widgets/pets_photo_widgets.dart';

class PetsPage extends StatelessWidget {
  const PetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                color: Colors.grey,
                height: size.height / 2,
                width: double.infinity,
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: DotController(currentPage: 0),
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ))),
              ),
              Positioned(
                top: 30,
                right: 30,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          size: 20,
                          color: Colors.black,
                        ))),
              ),
            ]),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.scaffoldBG,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    children: const [
                      PetsDateWidget(),
                      Spacer(),
                      PetsPhotoWidget(),
                      SizedBox(
                        width: 10,
                      ),
                      PetNameWidget(),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      PetInfoContainer(
                        title: "Age",
                        value: "2",
                      ),
                      PetInfoContainer(
                        title: "Sex",
                        value: "Female",
                      ),
                      PetInfoContainer(
                        title: "Breed",
                        value: "German",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PetsServicesWidget(
                    color: AppColors.petService1,
                    date: "25 / 5 / 2022",
                    icon: Icons.pets,
                    title: "Parasite Pill",
                    value: true,
                    onchange: (val) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PetsServicesWidget(
                    color: AppColors.petService2,
                    date: "25 / 5 / 2022",
                    icon: Icons.document_scanner_rounded,
                    title: "Viral Disease Vaccine",
                    value: true,
                    onchange: (val) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PetsServicesWidget(
                    color: AppColors.petService1,
                    date: "25 / 5 / 2022",
                    icon: Icons.catching_pokemon,
                    title: "Rabies Vaccine",
                    value: true,
                    onchange: (val) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
