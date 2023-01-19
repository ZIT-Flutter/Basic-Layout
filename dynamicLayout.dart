import 'package:flutter/material.dart';

class BasicLayout extends StatefulWidget {
  const BasicLayout({Key? key}) : super(key: key);

  @override
  State<BasicLayout> createState() => _BasicLayoutState();
}

class _BasicLayoutState extends State<BasicLayout> {
  String firstPhotoLink =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3nnNDlyjGKocWVTgaZVRcnT6PmamL0sEAL9GbmYnr&s';
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double mainContainerHeight = (screenHeight - 50) / 4;

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 15),
          // color: Colors.pink,
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: mainContainerHeight,
                color: Colors.lightGreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      width: (screenWidth - 10) / 2,
                      color: Colors.teal,
                      child: ClipRRect(
                        child: Image.network(
                            fit: BoxFit.fitHeight, firstPhotoLink),
                      ),
                    ),
                    Container(
                      height: mainContainerHeight,
                      width: (screenWidth - 10) / 2,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.pink,
                            height: (mainContainerHeight - 10) * 0.5,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  resetImage();
                                },
                                child: Text('Reset Image'),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.pink,
                            height: (mainContainerHeight - 10) / 2,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  imageChange();
                                },
                                child: Text('Çhange Image'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: mainContainerHeight,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: mainContainerHeight,
                color: Colors.cyan,
              ),
              Container(
                height: mainContainerHeight,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      width: (screenWidth - 10) / 2,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.pink,
                            height: (mainContainerHeight - 10) * 0.66,
                          ),
                          Container(
                              color: Colors.pink,
                              height: (mainContainerHeight - 10) * 0.34),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Flower image clicked');
                      },
                      child: Container(
                        height: double.infinity,
                        width: (screenWidth - 10) / 2,
                        color: Colors.teal,
                        child: ClipRRect(
                          child: Image.network(
                              fit: BoxFit.fitHeight,
                              'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  imageChange() {
    setState(() {
      firstPhotoLink =
          'https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819__340.jpg';
    });
  }

  resetImage() {
    setState(() {
      firstPhotoLink =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3nnNDlyjGKocWVTgaZVRcnT6PmamL0sEAL9GbmYnr&s';
    });
  }
}
