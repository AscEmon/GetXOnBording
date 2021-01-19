import 'package:GetXOnboarding/controller/OnboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final _controller = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Positioned(
          child: Container(
            child: PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.onPageIndex,
                itemCount: _controller.onBoardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          _controller.onBoardingPages[index].imageAsset),
                      SizedBox(height: 48),
                      Text(_controller.onBoardingPages[index].name),
                      SizedBox(height: 160),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                            _controller.onBoardingPages.length,
                            (index) => Obx(() {
                                  return Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.all(10),
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: _controller.onPageIndex.value ==
                                                index
                                            ? Colors.black
                                            : Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  );
                                })),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                    ],
                  );
                }),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: _controller.forward,
                  child: CircleAvatar(radius: 35, child: Obx(
                    () {
                      return Text(_controller.isLastPage?'Start':'Next');
                    }
                  )),
                )
              ],
            ),
          ),
        )
      ],
    )));
  }
}
