import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  const BasicLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
    child: Container(
    margin: EdgeInsets.only(top: 15),
    // color: Colors.pink,
    height: 750,
    width: 380,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180,
                color: Colors.lightGreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 170,
                      width: 185,
                      color: Colors.teal,
                      child: ClipRRect(
                        child: Image.network(
                            fit: BoxFit.fitHeight,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3nnNDlyjGKocWVTgaZVRcnT6PmamL0sEAL9GbmYnr&s'),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 185,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(color: Colors.pink, height: 80),
                          Container(color: Colors.pink, height: 80),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: 180,
                color: Colors.cyan,
              ),
              Container(
                height: 180,
                color: Colors.black,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [



                    Container(
                      height: 170,
                      width: 185,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(color: Colors.pink, height: 80),
                          Container(color: Colors.pink, height: 80),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        print('Flower image clicked');
                      },
                      child: Container(
                        height: 170,
                        width: 185,
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
}
