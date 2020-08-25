import 'package:flutter/material.dart';

import 'app_bar.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        gradientContainer(context: context),
        CustomAppBar(),
      ],
    );
  }

 Widget gradientContainer({@required BuildContext context}){
   return Container(
     width: MediaQuery.of(context).size.width,
     margin: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 50),
     padding: EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 40),
     decoration: BoxDecoration(
       gradient: LinearGradient(colors: [
         Colors.blue,
         Colors.black,
       ],
       ),
       borderRadius: BorderRadius.circular(12.0),
     ),
     child: Center(
       child: bannerText(),
     ),
   );
 } 


 Widget bannerText(){
   return Text(
     'Morocan Urban Dictionary',
     style: TextStyle(fontSize: 54),
   );
 }
}