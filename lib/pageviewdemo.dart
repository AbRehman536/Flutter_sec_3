import 'package:flutter/material.dart';
import 'package:flutter_sec_3/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController controller = PageController();
  List<OnBoardingModel> OnBoardingList = [
    OnBoardingModel(title: 'First Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Second Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Third Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Fourth Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Third Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Third Page', image: 'assets/images/bike.jpg'),
    OnBoardingModel(title: 'Third Page', image: 'assets/images/bike.jpg'),
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: OnBoardingList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i){
                return Column(children: [
                  Image.asset(OnBoardingList[i].image.toString()),
                  Text(OnBoardingList[i].title.toString()),
                ],);
              }
            ),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  OnBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          )
        ],
      ),
    );
  }
}
