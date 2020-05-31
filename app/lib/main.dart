import 'package:flutter/material.dart';

Map questions = {
  'restart': [
    {
      'question': 'Do you want to restart?',
      'answers': ['Yes', 'Yes'],
      'functions': [
        ['enter', 0],
        ['enter', 0]
      ]
    },
  ],
  'enter': [
    {
      'question': 'Do you want to enter the cave?',
      'answers': ['Yes', 'No'],
      'functions': [
        ['dragonFight', 0],
        ['noEnter', 0]
      ]
    },
  ],
  'noEnter': [
    {
      'question': 'The game doesn\'s even start, and thus is over.',
      'answers': ['Restart'],
      'functions': [
        ['restart', 0],
      ]
    },
  ],
  'dragonFight': [
    // 0
    {
      'question': 'You see a giant dragon, do you approach?',
      'answers': ['Yes, I is brave', 'Aw hell nah'],
      'functions': [
        ['dragonFight', 1],
        ['dragonFight', 2]
      ]
    },
    // 1
    {
      'question':
          'You can see a cut in its side. And some smoke exit its nose.',
      'answers': ['Stab it there, it\s weak', 'Turn around, that sh*t crazy'],
      'functions': [
        ['dragonFight', 3],
        ['dragonFight', 2]
      ]
    },
    // 2
    {
      'question': 'You turn and see a rather large egg.',
      'answers': ['Ooh! Dinner', 'Avoid it', 'Check its size'],
      'functions': [
        ['dragonFight', 4],
        ['dragonFight', 7],
        ['dragonFight', 8],
      ]
    },
    // 3
    {
      'question':
          'You lunge, and hear a defeaning scream, as fire engulfs your surroundings.',
      'answers': [
        'Stay and fight, it\s almost dead',
        'Try to escape while you still can'
      ],
      'functions': [
        ['dragonFight', 11],
        ['dragonFight', 12]
      ]
    },
    // 4
    {
      'question':
          'You crack the egg open, and pull out a pop-up stove from your backpack.',
      'answers': ['Cook it', 'Be a man and eat it raw'],
      'functions': [
        ['dragonFight', 5],
        ['dragonFight', 6]
      ]
    },
    // 5
    {
      'question':
          'You start cooking the egg, when the dragon smells it. It comes, and eats you.',
      'answers': ['Aww man'],
      'functions': [
        ['restart', 0]
      ]
    },
    // 6
    {
      'question':
          'You eat it, and gain God-like powers. You now become the ultimate ruler of the universe.',
      'answers': ['Sick', 'Radical', 'Me?', 'Holy Frick'],
      'functions': [
        ['restart', 0],
        ['restart', 0],
        ['restart', 0],
        ['restart', 0],
      ]
    },
    // 7
    {
      'question': 'You avoid it, and fall in a trap.',
      'answers': ['sad'],
      'functions': [
        ['restart', 0],
      ]
    },
    // 8
    {
      'question': 'You take out your tape measure.',
      'answers': ['Use it', 'Eyeball it'],
      'functions': [
        ['dragonFight', 9],
        ['dragonFight', 10],
      ]
    },
    // 9
    {
      'question':
          'You measure it, and find it\'s five feet in circumference. God also needs to smite you for knowing this information.',
      'answers': ['Ooh, God', 'At least I know now'],
      'functions': [
        ['restart', 0],
        ['restart', 0],
      ]
    },
    // 10
    {
      'question': 'You guess it\'s about 6 fett tall?',
      'answers': ['Cool, I\'m done here', 'Look for more'],
      'functions': [
        ['restart', 0],
        ['dragonFight', 13]
      ]
    },
    // 11
    {
      'question':
          'You end up killing it, and PETA is now after you. Good luck.',
      'answers': ['Thanks, I\'ll need it', 'PETA can\'t touch me'],
      'functions': [
        ['PETA', 0],
        ['PETA', 0],
      ]
    },
    // 12
    {
      'question': 'It didn\'t work, and you get burned alive',
      'answers': ['Owweee'],
      'functions': [
        ['restart', 0],
      ]
    },
    // 13
    {
      'question': 'You find another egg.',
      'answers': ['Compare sizes with the other egg'],
      'functions': [
        ['dragonFight', 14],
      ]
    },
    // 14
    {
      'question': 'You see this one is slightly larger.',
      'answers': ['Size doesn\'t matter'],
      'functions': [
        ['dragonFight', 15],
      ]
    },
    // 15
    {
      'question': 'Yes it does.',
      'answers': ['Ok'],
      'functions': [
        ['restart', 0],
      ]
    },
  ],
  'PETA': [
    {
      'question': 'PETA catches you, and does unspeakable things',
      'answers': ['Aww', 'Did you just run out of things to say?'],
      'functions': [
        ['restart', 0],
        ['PETA', 1],
      ]
    },
    {
      'question': 'Yes',
      'answers': ['Solid'],
      'functions': [
        ['restart', 0],
      ]
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
      title: 'Dungeon Crawl - Fighter',
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
    time = 'enter';
    itemCount = questions[time][index]['answers'].length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dungeon Crawl - Fighter'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                questions[time][index]['question'],
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
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
                            index =
                                questions[oldTime][index]['functions'][i][1];
                            itemCount =
                                questions[time][index]['answers'].length;
                          }),
                        ),
                      )),
            ),
          ],
        ));
  }
}
