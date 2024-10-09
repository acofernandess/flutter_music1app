import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D0D0D),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
        title: Padding(
          padding: EdgeInsets.only(right: 0),
          child: Center(
            child: Text(
              'PLAYLIST',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              width: 350,
              height: 350,
              child: Image.asset('asset/img.png'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Californication',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Hot Chili Peppers',
                style: TextStyle(color: Colors.white54, fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 5,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0:27',
                  style: TextStyle(color: Color(0xff62A658)),
                ),
                Text('-3:44', style: TextStyle(color: Color(0xff62A658)))
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NEXT:',
                style: TextStyle(color: Colors.white54),
              ),
              Text(
                ' By The Way...',
                style: TextStyle(color: Color(0xff62A658)),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Icon(
                    Icons.shuffle,
                    color: Color(0xff62A658),
                    size: 30,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.repeat,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
