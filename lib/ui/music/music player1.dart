import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musics(),
  ));
}

class Musics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "M U S I F Y",
                    style: TextStyle(color: Colors.purple[600],fontSize: 30),
                  )),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          "Suggested Playlists",
                          style: TextStyle(
                              color: Colors.purple[600],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CarouselSlider(
                          items: [
                            SizedBox(
                              height: 130,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Card(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://images.ctfassets.net/bdyhigkzupmv/6lySzcy7qcIN1tf81Qkus/5b5ac73daeaf61f9057c0b0dd8447a31/hero-guitar-outro.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Card(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://images.news18.com/ibnlive/uploads/2022/06/music-1-16553517663x2.png?impolicy=website&width=510&height=356"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: .7,
                            height: 200,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.easeInToLinear,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 600),
                            enableInfiniteScroll: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80, top: 10),
                  child: Text(
                    "Recommanded For You",
                    style: TextStyle(
                        color: Colors.purple[600],
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
                          ),
                          title: Text(
                            "Hero",
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          subtitle: Text(
                            "Tyler Swift",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.purple[600],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/OIP.V2MuImi8hW9MD0xbWE3wZAHaHa?pid=ImgDet&rs=1"),
                          ),
                          title: Text(
                            "Unholy",
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          subtitle: Text(
                            "San Smith & Kevin Petras",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.purple[600],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/id/1369567653/photo/thoughtful-serious-african-american-teen-girl-face-portrait.jpg?b=1&s=170667a&w=0&k=20&c=BSJgtAV6TQ7lysuk5_s1lk6kUAZIjzgxZx6XY80oCNQ="),
                          ),
                          title: Text(
                            "Lift Me UP ",
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          subtitle: Text(
                            "Rihaana",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.purple[600],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/id/947804676/photo/business-woman-is-depressed-she-felt-stressed-and-alone-in-the-house.jpg?b=1&s=170667a&w=0&k=20&c=a_kH182_MnBPLHhQS7QcZ86O_BvgJ0tMl1-Y3eh5Ges="),
                          ),
                          title: Text(
                            "Depression",
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          subtitle: Text(
                            "Dax",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.purple[600],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&w=1000&q=80"),
                          ),
                          title: Text(
                            "I'm Good",
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          subtitle: Text(
                            "David Guietta & Bebe Rexha",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple[600],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.purple[600],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: BottomNavigationBar(
                          backgroundColor: Colors.black,
                          elevation: 30,
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.purple[600],
                                ),
                                label: "Home"),
                            BottomNavigationBarItem(
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              label: "Search",
                            ),
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.save_rounded,
                                  color: Colors.white,
                                ),
                                label: "Options"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
