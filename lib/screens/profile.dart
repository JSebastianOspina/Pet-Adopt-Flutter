// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Image.asset(
                'assets/dog1.jpg',
                width: size.width,
                fit: BoxFit.cover,
              )),
              SizedBox(height: size.height / 2.5, width: size.width)
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              height: size.height / 1.8,
              child: _ProfileCardContent(),
            ),
          ),
          Positioned(
            left: 20,
            top: size.height / 15,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}

class _ProfileCardContent extends StatelessWidget {
  const _ProfileCardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tresky ♂︎',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Beagle',
            ),
            SizedBox(
              width: 20,
            ),
            Text('3 years, 4 months'),
            SizedBox(
              width: 20,
            ),
            Text('13.72 Kg'),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            ClipRRect(
              child: Image.asset('assets/logo.png', width: 85, height: 85),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('South Woods Shelter',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                Text('San Diego, CA',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text('Tresky was found as a Feral Puppy and has been working'
            'so hard to trust. He is great with kids and a little '
            'rough with cats but just playing. He is shy at first'
            'but warms up quickly. Loves to snugle in bed.'
            'He needs a commited owner to give him the time'
            'and energy he needs'),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double?>(5),
                shadowColor: MaterialStateProperty.all<Color?>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                    EdgeInsets.all(15)),
                shape:
                    MaterialStateProperty.all<OutlinedBorder?>(CircleBorder()),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff84D5D8)),
              ),
              onPressed: () {},
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 24,
              ),
              //color: Color(0xff84D5D8),
            ),
            RoundedIconTextButton(
              buttonText: 'Adoption',
              backgroundColor: Color(0xff84D5D8),
              fontWeight: FontWeight.bold,
            ),
          ],
        )
      ],
    );
  }
}

class RoundedIconTextButton extends StatelessWidget {
  const RoundedIconTextButton({
    Key? key,
    required this.buttonText,
    required this.backgroundColor,
    this.fontWeight,
    this.icon,
  }) : super(key: key);
  final String buttonText;
  final Color backgroundColor;
  final FontWeight? fontWeight;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double?>(5),
        shadowColor: MaterialStateProperty.all<Color?>(Colors.white),
        shape: MaterialStateProperty.all<OutlinedBorder?>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(fontSize: 20, fontWeight: fontWeight ?? FontWeight.bold)),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon != null ? icon! : SizedBox(width: 0, height: 0),
          SizedBox(
            width: icon != null ? 15 : 0,
          ),
          Text(
            buttonText,
          ),
        ],
      ),
    );
  }
}
