import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/service/storage/storage.dart';
import '../../../core/widget/button/button.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Builder(builder: (context) {
                  List<Map<String, dynamic>> instrunctionItems = [
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/flat-creativity-concept-illustration_52683-64279.jpg?w=740&t=st=1692625489~exp=1692626089~hmac=994cc1e80ec916f4a8e0ac3529a979d081e4e1b4af4484c97801809fd15d34cf",
                      "title": "Instruction 1.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/internship-job-training-illustration_23-2148751280.jpg?w=826&t=st=1692625526~exp=1692626126~hmac=6e0950ea2fa5ca78d0e251288208191bb9cf179b465ed9f24269c7881250ad61",
                      "title": "Instruction 2.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/hand-drawn-badger-cartoon-illustration_23-2150678297.jpg?w=740&t=st=1692625541~exp=1692626141~hmac=ed49912575b17d75b410ea5321570a3990683cba154acf675eee2f0fa8116a05",
                      "title": "Instruction 3.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    }
                  ];

                  return Column(
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          carouselController: controller.carouselController,
                          options: CarouselOptions(
                            height: 500.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              controller.currentIndex = index;
                              controller.setState(() {});
                            },
                          ),
                          items: instrunctionItems.map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              item["photo"],
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      item["title"],
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      item["description"],
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            instrunctionItems.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(
                                          controller.currentIndex == entry.key
                                              ? 0.9
                                              : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 30.0,
              ),
              QButton(
                label: "Next",
                onPressed: () {
                  LocalDataService().saveFirstTimeLogin();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
