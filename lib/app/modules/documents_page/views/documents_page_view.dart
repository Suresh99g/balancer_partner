import 'package:balancer_partner/app/core/appconfig/app_colors.dart';
import 'package:balancer_partner/app/core/appconfig/app_sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/documents_page_controller.dart';

class DocumentsPageView extends GetView<DocumentsPageController> {
  const DocumentsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
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
              height: AppSizes.x2_37,
            ),
            Column(children: [
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
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Card(
                        child: Container(
                          width: AppSizes.x7_05,
                          height: AppSizes.x7_05,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius:
                                  BorderRadius.circular(AppSizes.x1_50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/Career 1.png"),
                              Text(
                                "Work",
                                style: textTheme.bodySmall!.copyWith(
                                    fontSize: AppSizes.x1_25,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: AppSizes.x7_05,
                        height: AppSizes.x7_05,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius:
                                BorderRadius.circular(AppSizes.x1_50)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Check List 1.png"),
                            Text(
                              "Documents",
                              style: textTheme.bodySmall!.copyWith(
                                fontSize: AppSizes.x1_25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppSizes.x1_50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.x1_87),
                    child: Text(
                      "We need your Documents to verify you",
                      style: textTheme.bodyLarge!.copyWith(
                          fontSize: AppSizes.x2_75,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset("assets/Check List 2.png"),
              Text(
                "Click to submit your documents",
                style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: AppSizes.x2_00,
              ),
              Container(
                width: AppSizes.x46_25,
                height: AppSizes.x7_05,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(AppSizes.x1_50)),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Submit Documents",
                      style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.white, fontSize: AppSizes.x2_75),
                    )),
              )
            ]),
          ]),
        ));
  }
}
