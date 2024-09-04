import 'package:balancer_partner/app/core/appconfig/app_colors.dart';
import 'package:balancer_partner/app/core/appconfig/app_sizes.dart';
import 'package:balancer_partner/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.x1_87,
                    top: AppSizes.x3_75,
                    bottom: AppSizes.x2_25),
                child: Row(
                  children: [
                    Image.asset("assets/Group 1.png"),
                    const SizedBox(
                      width: AppSizes.x1_25,
                    ),
                    Text("Balancer Partner",
                        style: textTheme.titleLarge!.copyWith(
                            color: AppColors.blue, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.x1_87),
                child: Text("Welcome to Balancers Partner!",
                    style: textTheme.bodyLarge!.copyWith(
                        fontSize: AppSizes.x3_75, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: AppSizes.x3_75,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.isProgressbarTapped.value =
                            !controller.isProgressbarTapped.value;
                      },
                      child: SizedBox(
                        width: width / 2.3,
                        child: LinearProgressIndicator(
                          color: AppColors.blue,
                          value:
                              controller.isProgressbarTapped.value ? 1.0 : 0.5,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("ontap pressed");
                        controller.isProgressbarTapped.value =
                            !controller.isProgressbarTapped.value;
                      },
                      child: SizedBox(
                        width: width / 2.3,
                        child: LinearProgressIndicator(
                          color: AppColors.blue,
                          value:
                              controller.isProgressbarTapped.value ? 0.5 : 0.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSizes.x2_00,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_87),
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            width: AppSizes.x7_05,
                            height: AppSizes.x7_05,
                            color: Colors.grey.withOpacity(0.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/Hire 1.png"),
                                Text(
                                  "Personal",
                                  style: textTheme.bodySmall!.copyWith(
                                      fontSize: AppSizes.x1_25,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: AppSizes.x7_05,
                            height: AppSizes.x7_05,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/Career 1.png"),
                                Text(
                                  "Work",
                                  style: textTheme.bodySmall!.copyWith(
                                      fontSize: AppSizes.x1_25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.DOCUMENTS_PAGE);
                          },
                          child: Card(
                            child: Container(
                              width: AppSizes.x7_05,
                              height: AppSizes.x7_05,
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/Check List 1.png"),
                                  Text(
                                    "Documents",
                                    style: textTheme.bodySmall!.copyWith(
                                        fontSize: AppSizes.x1_25,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.x1_50,
                  ),
                  Obx(
                    () => controller.isProgressbarTapped.value == false
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(AppSizes.x1_87),
                                    child: Text(
                                      "What's your preferred vehicle",
                                      style: textTheme.bodyLarge!.copyWith(
                                          fontSize: AppSizes.x2_75,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: AppSizes.x1_87,
                              ),
                              SizedBox(
                                height: AppSizes.x18_75,
                                child: Obx(() {
                                  return AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 300),
                                    child: controller.selectedVehicle.value == 0
                                        ? Image.asset(
                                            "assets/2300_2-10 1.png",
                                            key: const ValueKey(0),
                                          )
                                        : Image.asset(
                                            "assets/Group.png",
                                            key: const ValueKey(1),
                                          ),
                                  );
                                }),
                              ),
                              const SizedBox(
                                height: AppSizes.x2_37,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.x2_37),
                                child: Obx(
                                  () => Row(
                                    children: [
                                      Radio(
                                          value: 0,
                                          groupValue:
                                              controller.selectedVehicle.value,
                                          onChanged: (value) {
                                            if (value != null) {
                                              controller.selectedVehicle.value =
                                                  value;
                                            }
                                          }),
                                      const Text("Bike"),
                                      const SizedBox(
                                        width: AppSizes.x1_75,
                                      ),
                                      Radio(
                                          value: 1,
                                          groupValue:
                                              controller.selectedVehicle.value,
                                          onChanged: (value) {
                                            if (value != null) {
                                              controller.selectedVehicle.value =
                                                  value;
                                            }
                                          }),
                                      const Text("Scooty"),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSizes.x2_75,
                              ),
                              Container(
                                width: AppSizes.x46_25,
                                height: AppSizes.x7_05,
                                decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    borderRadius:
                                        BorderRadius.circular(AppSizes.x1_50)),
                                child: TextButton(
                                    onPressed: () {
                                      controller.isProgressbarTapped.value =
                                          true;
                                    },
                                    child: Text(
                                      "Next",
                                      style: textTheme.bodyMedium!.copyWith(
                                          color: AppColors.white,
                                          fontSize: AppSizes.x2_75),
                                    )),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(AppSizes.x1_87),
                                    child: Text(
                                      "What's your Bike Number?",
                                      style: textTheme.bodyLarge!.copyWith(
                                          fontSize: AppSizes.x2_75,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: AppSizes.x1_87,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppSizes.x1_87),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSizes.x1_87),
                                              borderSide: const BorderSide(
                                                  color: AppColors.grey,
                                                  width: 1.0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSizes.x1_87),
                                              borderSide: const BorderSide(
                                                  color: AppColors.lightGrey,
                                                  width: 1.0)),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                AppSizes.x1_87),
                                            borderSide: const BorderSide(
                                              color: AppColors.lightGrey,
                                              width: 1.0,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.all(
                                              AppSizes.x2_37),
                                          hintText: "TS 01 AA 1234",
                                          hintStyle: const TextStyle(
                                              color: AppColors.lightGrey)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSizes.x4_37,
                                  ),
                                  Container(
                                    width: AppSizes.x46_25,
                                    height: AppSizes.x7_05,
                                    decoration: BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.x1_50)),
                                    child: TextButton(
                                        onPressed: () {
                                          controller.isProgressbarTapped.value =
                                              true;
                                        },
                                        child: Text(
                                          "Next",
                                          style: textTheme.bodyMedium!.copyWith(
                                              color: AppColors.white,
                                              fontSize: AppSizes.x2_05),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
