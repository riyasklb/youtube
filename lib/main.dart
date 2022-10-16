import 'package:flutter/material.dart';
// import 'package:movieappui/dummyData.dart';
// import 'package:movieappui/widgets/ScreenDetails.dart';

// import 'package:movieappui/widgets/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube clone',
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.white,
      )),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart_sharp), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline_sharp), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: 'Library'),
          ]),
      body: Container(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => ScreenDetails(
                                          dummyDetails: dummyData[index],
                                          //   dummyData[index].pic ,
                                          // dummyData[index].time,
                                          // dummyData[index].title,
                                          // dummyData[index].subtitle,
                                          //  dummyData[index].propic
                                        )))),
                            child: Image.asset(dummyData[index].pic)),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 10, bottom: 6),
                            color: Colors.black,
                            padding: EdgeInsets.all(2),
                            child: Text(dummyData[index].time),
                          ),
                        ))
                      ],
                    ),
                    Ink(
                      color: Colors.black,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: ClipOval(
                              child: Image.asset(
                                dummyData[index].propic,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        title: Text(dummyData[index].title),
                        subtitle: Text(
                          dummyData[index].subtitle,
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: dummyData.length)),
    );
  }
}

class Data {
  String pic;
  String title;
  String subtitle;
  String propic;
  String time;

  Data(this.pic, this.title, this.subtitle, this.propic, this.time);
}

List<Data> dummyData = [
  Data(
      'assets/images/dart.jpg',
      'Dart for beginners',
      'dulquer salman   .58k views .2weeks ago',
      'assets/images/dq.jpg',
      '15:40'),
  Data(
      'assets/images/vscode.png',
      'IDE -write and debug code ',
      'tovino thomas    .54k views .7weeks ago',
      'assets/images/tovi.jpg',
      '20:01'),
  Data(
      'assets/images/userinterface.png',
      'User interface -learn flutter',
      'shahRukh Khan    .45k views .1weeks ago',
      'assets/images/srk.jpg',
      '35:12'),
  Data(
      'assets/images/audio.png',
      'Assets -flutter for beginners',
      'Mammoottys    .62k views .2weeks ago',
      'assets/images/mammootty.jpg',
      '14:00'),
  Data(
      'assets/images/storage.jpeg',
      'Local storage-flutter tutorials',
      'dulquer salman   .10k views .2weeks ago',
      'assets/images/dq.jpg',
      '10:56'),
  Data(
      'assets/images/state management.png',
      'State management -learn flutter as a pro',
      'Mohanlal      .75k views .1weeks ago',
      'assets/images/mohanlal.jpg',
      '50:04'),
  Data(
      'assets/images/firebase.jpeg',
      'Firebase -flutter expert',
      'Vikram         .5k views .3weeks ago',
      'assets/images/vikram.jpg',
      '01:05:00'),
];
//import 'package:flutter/material.dart';

AppBar topBar = AppBar(
  backgroundColor: Colors.black,
  title: Image.asset(
    "assets/images/youtube_logo_dark.jpg",
    fit: BoxFit.cover,
    width: 100,
  ),
  actions: [
    Padding(
      padding: EdgeInsets.only(right: 20),
      child: Icon(Icons.cast_connected_outlined),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20),
      child: Icon(Icons.notifications_none),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20),
      child: Icon(Icons.search),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          width: 30,
          height: 30,
          child: ClipOval(
              child: Image.asset(
            'assets/images/ikb.jpg',
            fit: BoxFit.contain,
          )),
        ),
      ),
    )
  ],
);
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:movieappui/dummyData.dart';

class ScreenDetails extends StatefulWidget {
//  List <Data> dummyDetails;
  Data dummyDetails;
  // String img;
  // String time;
  // String videotitle;
  // String videoSubtitle;
  // String propic;

  ScreenDetails({required this.dummyDetails}
      // this.img,
      // this.time,
      //  this.videotitle,
      //  this.videoSubtitle,
      //  this.propic
      );

  @override
  State<ScreenDetails> createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          //floating: true,
          // pinned: true,
          //snap: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(top: 37.0),
              child: Stack(
                children: [
                  Image.asset(widget.dummyDetails.pic),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 10, bottom: 6),
                      color: Colors.black,
                      padding: EdgeInsets.all(2),
                      child: Text(widget.dummyDetails.time),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.dummyDetails.title,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .005,
                      ),
                      Text(
                        widget.dummyDetails.subtitle,
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .065,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.thumb_up_off_alt_outlined),
                    Text("7.4lakh")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.thumb_down_alt_outlined),
                    Text("Dislike")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.share_sharp), Text("Share")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.show_chart_sharp), Text("Create")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.file_download_outlined),
                    Text("Download")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.library_add_outlined), Text("Save")],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .065,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(
                  color: Colors.white38,
                  width: .5,
                ),
                bottom: BorderSide(
                  color: Colors.white38,
                  width: .5,
                )),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipOval(
                      child: Image.asset(
                        widget.dummyDetails.propic,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Text(
                        widget.dummyDetails.subtitle.substring(0, 14),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      '3M subscribers',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Text(
                  "SUBSCRIBE",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
            ],
          ),
        )),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Column(
            children: [
              Stack(children: [
                Image.asset(dummyData[index].pic),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 10, bottom: 6),
                    color: Colors.black,
                    padding: EdgeInsets.all(2),
                    child: Text(dummyData[index].time),
                  ),
                ))
              ]),
              Ink(
                color: Colors.black,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: ClipOval(
                        child: Image.asset(
                          dummyData[index].propic,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  title: Text(dummyData[index].title),
                  subtitle: Text(
                    dummyData[index].subtitle,
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        }, childCount: dummyData.length))
      ]),
    );
  }
}
