import 'package:flutter/material.dart';
import 'package:pcstore/utils/constants.dart';

class MaterialIntroPage extends StatelessWidget {
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: constants.introPageBgColor,
      child: PageView.builder(
        itemBuilder: (BuildContext context,int index) =>_buildPage(context,index,constants.assetsListIntroPage[index], constants.titleTextIntro[index], constants.descriptionTextIntro[index]),
        itemCount: 3
      )
    );
  }
  Widget _buildPage(BuildContext context,int currentPage,String imageAsset,String titleText,String descriptionText){
    return Column(
      children: [
        Expanded(
          child: Image.asset(imageAsset,fit: BoxFit.fill),
          flex: 6
        ),
        Expanded(
          child: Padding(child: Text(titleText,textAlign: TextAlign.center,style: TextStyle(fontSize: 28.0,color: Colors.white)),padding: const EdgeInsets.only(top: 40.0,bottom:40.0,left: 10.0,right: 10.0)),
          flex: 2
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
          child:Text(descriptionText,textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,color: constants.introPageDescriptionTextColor)))
          ),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5.0),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
              color: currentPage == 0 ? Colors.white : Colors.grey,
              shape: BoxShape.circle
            )),
            Container(
              margin: const EdgeInsets.only(right: 5.0,left: 5.0),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
              color: currentPage == 1 ? Colors.white : Colors.grey,
              shape: BoxShape.circle
            )),
            Container(
              margin: const EdgeInsets.only(left: 5.0),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
              color: currentPage == 2 ? Colors.white : Colors.grey,
              shape: BoxShape.circle
            ))
          ],
        ))
      ]
    );
  }
}