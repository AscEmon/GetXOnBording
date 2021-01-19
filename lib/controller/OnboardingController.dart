import 'package:GetXOnboarding/model/onBoardingModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

var onPageIndex=0.obs;
bool  get isLastPage =>onPageIndex.value==onBoardingPages.length-1;
var pageController=PageController();

forward(){
  if(isLastPage){
    //go to Dashboard
    Get.offNamed('/second');
  }
  else{

  pageController.nextPage(duration:300.milliseconds, curve: Curves.bounceOut);
  }
}

List<OnBoardingModel> onBoardingPages=[
OnBoardingModel(imageAsset: 'images/images3.png',name:'Image Hola'),
OnBoardingModel(imageAsset: 'images/images2.jfif',name:'Image Second'),
OnBoardingModel(imageAsset: 'images/images1.jfif',name:'Image Third'),

];

}