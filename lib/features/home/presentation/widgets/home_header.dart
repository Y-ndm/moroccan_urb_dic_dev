import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  static String image_url =
      'https://www.qbrobotics.com/wp-content/uploads/2018/03/sample-logo-470x235.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          logo(),
          loginSignUp(),
        ],
      ),
    );
  }

  Widget loginSignUp() {
    return Row(
      children: [
        loginbutton(),
        SizedBox(width: 8),
        Container(
          height: 20,
          child: VerticalDivider(
            width: 2,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8),
        signUpbutton(),
      ],
    );
  }

  Widget loginbutton() {
    return GestureDetector(
      onTap: () {
        print('Login Button Clicked');
      },
      child: Text('Login', style: TextStyle(fontWeight: FontWeight.w600),),
    );
  }

  Widget signUpbutton() {
    return GestureDetector(
      onTap: () {
        print('SignUp Button Clicked');
      },
      child: Text('SignUp', style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }

  Widget logo() {
    return Container(
      height: 45,
      width: 70,
      decoration: BoxDecoration(
        // color: Colors.green,
        image: DecorationImage(
          image: NetworkImage(image_url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
