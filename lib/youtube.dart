import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(youtube());
}

class youtube extends StatelessWidget {
  const youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: page1(),
    );
  }
}

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset(
          'assets/yt.png',
          width: 100,
          //height: 100,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('news'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('programming'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('tech'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('garden'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('game'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: FilterChip(
                            onSelected: (value) {},
                            elevation: 0,
                            label: Text('mobile'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Recommended',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ],
              ),
            )),
            Stack(
              children: [
                Image.asset('assets/Capture.PNG'),
                Positioned.fill(
                    bottom: 10,
                    right: 10,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          child: Text(
                        '12:11',
                        style: TextStyle(
                            backgroundColor: Colors.black, color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets\images.jpg'),
                ),
                title: Text('Mid brain activation (demo)4k'),
                subtitle: Text('Code to do.  1.4k views . 1 seconds ago'),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/Capture.PNG'),
                Positioned.fill(
                    bottom: 10,
                    right: 10,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          child: Text(
                        '12:11',
                        style: TextStyle(
                            backgroundColor: Colors.black, color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets\images.jpg'),
                ),
                title: Text('Mid brain activation (demo)4k'),
                subtitle: Text('Code to do.  1.4k views . 1 seconds ago'),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),
              label: 'newvideo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'reel',
            )
          ]),
    );
  }
}
