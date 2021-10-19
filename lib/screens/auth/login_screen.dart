// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/logo.png'),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '& find your new best friend',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const RoundedButtonWithBackground(),
              const SizedBox(
                height: 15.0,
              ),
              const RoundedBorderedButton(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue.shade800,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(top: 6),
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage('assets/google.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue.shade300,
                      size: 35,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Login'))
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SvgPicture.asset(
            'assets/top-wave.svg',
            width: size.width,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: SvgPicture.asset(
            'assets/bottom-wave.svg',
            width: size.width,
          ),
        ),
      ],
    ));
  }
}

class RoundedButtonWithBackground extends StatelessWidget {
  const RoundedButtonWithBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder?>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FaIcon(FontAwesomeIcons.apple),
          const SizedBox(
            width: 15,
          ),
          const Text(
            'Sign up with Apple',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class RoundedBorderedButton extends StatelessWidget {
  const RoundedBorderedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide?>(BorderSide(width: 2)),
        shape: MaterialStateProperty.all<OutlinedBorder?>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
        textStyle:
            MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 17)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.email_outlined,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            'Sign up with email',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
