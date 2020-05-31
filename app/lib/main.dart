import 'package:flutter/material.dart';

Map questions = {
  'storyTime': [
    {
      'question': 'Fight the Dragon',
      'answers': ['Yes', 'No'],
      'functions': [
        ['dragonFight', 0],
        ['dragonFight', 1]
      ]
    },
  ],
  'dragonFight': [
    {
      'question': 'You died',
      'answers': ['Ok'],
      'functions': [['storyTime', 0]]
    },
    {
      'question': 'You find a stone as you turn and leave',
      'answers': ['Take it', 'Leave it, that sh*t crazy'],
      'functions': []
    },
  ]
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String time;
  int index;
  int itemCount;

  @override
  void initState() {
    super.initState();
    index = 0;
    time = 'storyTime';
    itemCount = questions[time][index]['answers'].length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hack Sim'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[time][index]['question'],
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemCount,
                  itemBuilder: (c, i) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          padding: EdgeInsets.all(16),
                          color: Colors.green,
                          child: Text(
                            questions[time][index]['answers'][i],
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onPressed: () => setState(() {
                            String oldTime = time;
                            time = questions[time][index]['functions'][i][0];
                            index = questions[oldTime][index]['functions'][i][1];
                            itemCount = questions[time][index]['answers'].length;
                          }),
                        ),
                      )),
            ),
          ],
        ));
  }
}
