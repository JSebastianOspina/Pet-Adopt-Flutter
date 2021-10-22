import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actionsIconTheme: IconThemeData(size: 50),
        actions: [
          IconButton(
            iconSize: 55,
            icon: ClipRRect(
              child: const Image(
                image: AssetImage('assets/profile.jpg'),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 32,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Adopt',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  const Text(
                    'a friend',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 55.0,
                    child: CategorySelectionList(),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: size.width,
                  height: size.height / 2,
                  //color: const Color(0XFFDCF2F3),
                ),
                Container(
                  width: size.width,
                  height: 300,
                  color: const Color(0XFFDCF2F3),
                ),
                Positioned(
                  top: 0,
                  height: 70,
                  width: size.width,
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/background-top-wave.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  height: 70,
                  width: size.width,
                  bottom: 0,
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/background-bottom-wave.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 3.1,
                  child: Swiper(
                    onTap: (int index) {
                      Navigator.pushNamed(context, 'profileScreen');
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/dogs/dog$index.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    itemCount: 6,
                    viewportFraction: 0.6,
                    scale: 0.8,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Shelters near you',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/logo.png',
                      height: 90,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/logo.png',
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategorySelectionList extends StatelessWidget {
  CategorySelectionList({
    Key? key,
  }) : super(key: key);
  List<String> categories = ['Dogs', 'Cats', 'Rabbits', 'Birds', 'Reptiles'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(right: 25.0),
          child: Text(
            categories[index],
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
        );
      },
    );
  }
}
