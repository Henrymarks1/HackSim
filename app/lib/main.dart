import 'package:flutter/material.dart';

List restart = ['restart', 'restart'];
List noEnter = ['noEnter', 'noEnter'];

Map questions = {
  'restart': {
    'restart': {
      'question': 'Do you want to restart?',
      'answers': ['Yes', 'Yes'],
      'functions': [
        ['enter', 'enter'],
        ['enter', 'enter']
      ]
    },
  },
  'enter': {
    'enter': {
      'question': 'Do you want to enter the cave?',
      'answers': ['Yes', 'No'],
      'functions': [
        ['dragonFight', 'start'],
        noEnter
      ]
    },
  },
  'noEnter': {
    'noEnter': {
      'question': 'The game doesn\'t even start, and thus is over.',
      'answers': ['Restart'],
      'functions': [
        restart,
      ]
    },
  },
  'dragonFight': {
    'start': {
      'question': 'You see a giant dragon, do you approach?',
      'answers': ['Yes, I is brave', 'Aw hell nah'],
      'functions': [
        ['dragonFight', 'fight'],
        ['egg', 'start']
      ]
    },
    'fight': {
      'question':
          'You can see a cut in its side. And some smoke exit its nose.',
      'answers': ['Stab it there, it\s weak', 'Turn around, that sh*t crazy'],
      'functions': [
        ['dragonFight', 'attack'],
        ['egg', 'start']
      ]
    },
    // 3
    'attack': {
      'question':
          'You lunge, and hear a defeaning scream, as fire engulfs your surroundings.',
      'answers': [
        'Stay and fight, it\s almost dead',
        'Try to escape while you still can'
      ],
      'functions': [
        ['dragonFight', 'kill'],
        ['dragonFight', 'burn']
      ]
    },
    'kill': {
      'question':
          'You end up killing it, and PETA is now after you. Good luck.',
      'answers': ['Thanks, I\'ll need it', 'PETA can\'t touch me'],
      'functions': [
        ['PETA', 'start'],
        ['PETA', 'start'],
      ]
    },
    'burn': {
      'question': 'It didn\'t work, and you get burned alive',
      'answers': ['Owweee'],
      'functions': [
        restart,
      ]
    },
  },
  'PETA': {
    'start': {
      'question': 'PETA catches you, and does unspeakable things',
      'answers': ['Aww', 'Did you just run out of things to say?'],
      'functions': [
        restart,
        ['PETA', 'runOut'],
      ]
    },
    'runOut': {
      'question': 'Yes',
      'answers': ['Solid'],
      'functions': [
        restart,
      ]
    },
  },
  'trap': {
    'start': {
      'question': 'You avoid it, and fall in a hole. You can\'t see anything',
      'answers': [
        'Feel around for a lightswitch',
        'Just sit there',
        'Open your eyes'
      ],
      'functions': [
        ['trap', 'feel'],
        ['trap', 'sit'],
        ['trap', 'open'],
      ]
    },
    'sit': {
      'question': 'You sit and wait',
      'answers': [
        'Meditate',
        'Try to sleep',
      ],
      'functions': [
        ['trap', 'meditate'],
        ['trap', 'sleep'],
      ]
    },
    'sleep': {
      'question': 'You sleep, and awaken in the very far future',
      'answers': [
        'Yeah, that\'s about it. I\'m done',
      ],
      'functions': [
        restart,
      ]
    },
    'meditate': {
      'question': 'You reach enlightenment, but die of thirst shortly after.',
      'answers': [
        'Aww',
        '*drinking own pee* No I didn\'t',
      ],
      'functions': [
        restart,
        ['trap', 'pee'],
      ]
    },
    'pee': {
      'question': 'You lose enloghtenment and all respect for you.',
      'answers': [
        'I know',
      ],
      'functions': [
        restart,
      ]
    },
    'feel': {
      'question': 'You feel around, and stab your hand on a spike',
      'answers': ['I know first aid', 'It\'s not that bad, I can push through'],
      'functions': [
        ['trap', 'aid'],
        ['trap', 0],
      ]
    },
    'aid': {
      'question':
          'You take off your shirt, and your chiseled abbs scare off all the bad things, and your wound heals. Everything in the universe now bows down to you.',
      'answers': [
        'I knew my working out would pay off',
        'My... ABBS????? HAHAHAHAAHA, what abbs?'
      ],
      'functions': [restart, restart]
    },
    'open': {
      'question': 'You open your eyes, and see the hole is ten feet deep.',
      'answers': ['Look in your backpack for items', 'I can jump'],
      'functions': [
        ['trap', 'look'],
        ['trap', 'jump'],
      ]
    },
    'look': {
      'question': 'You look in your backpack and find a 7 course meal for two.',
      'answers': ['Good, I\'m starving', 'Look for more'],
      'functions': [
        ['trap', 'eat'],
        ['trap', 'mirror'],
      ]
    },
    'eat': {
      'question':
          'You begin eating, but remember you\re the one who cooked it. You die from food poisoning.',
      'answers': [
        'Aww, why couldn\'t it be my mom',
        'I always knew I\'d go out this way'
      ],
      'functions': [restart, restart]
    },
    'mirror': {
      'question': 'You find a mirror',
      'answers': ['Ok, cool', 'I always knew I\'d go out this way'],
      'functions': [restart, restart]
    },
    'jump': {
      'question':
          'You jump with the might of a thousand rabbits, and leave the hole.',
      'answers': [
        'Go fight the dragon',
        'Go back to the egg',
        'Holy sh*t, that was fun'
      ],
      'functions': [restart, restart, restart]
    },
  },
  'egg': {
    'start': {
      'question': 'You turn and see a rather large egg.',
      'answers': ['Ooh! Dinner', 'Avoid it', 'Check its size'],
      'functions': [
        ['egg', 'eat'],
        ['trap', 'start'],
        ['egg', 'measure'],
      ]
    },
    'eat': {
      'question':
          'You crack the egg open, and pull out a pop-up stove from your backpack.',
      'answers': ['Cook it', 'Be a man and eat it raw'],
      'functions': [
        ['egg', 'cook'],
        ['egg', 'raw']
      ]
    },
    'cook': {
      'question':
          'You start cooking the egg, when the dragon smells it. It comes, and eats you.',
      'answers': ['Aww man'],
      'functions': [restart]
    },
    'raw': {
      'question':
          'You eat it, and gain God-like powers. You now become the ultimate ruler of the universe.',
      'answers': ['Sick', 'Radical', 'Me?', 'Holy Frick'],
      'functions': [
        restart,
        restart,
        restart,
        restart,
      ]
    },
    'measure': {
      'question': 'You take out your tape measure.',
      'answers': ['Use it', 'Eyeball it'],
      'functions': [
        ['egg', 'tape'],
        ['egg', 'eyeball'],
      ]
    },
    'tape': {
      'question':
          'You measure it, and find it\'s five feet in circumference. God also needs to smite you for knowing this information.',
      'answers': ['Ooh, God', 'At least I know now'],
      'functions': [
        restart,
        restart,
      ]
    },
    'eyeball': {
      'question': 'You guess it\'s about 6 feet tall?',
      'answers': ['Cool, I\'m done here', 'Look for more'],
      'functions': [
        restart,
        ['egg', 'look']
      ]
    },
    'look': {
      'question': 'You find another egg.',
      'answers': ['Compare sizes with the other egg'],
      'functions': [
        ['egg', 'larger'],
      ]
    },
    'larger': {
      'question': 'You see this one is slightly larger.',
      'answers': ['Size doesn\'t matter'],
      'functions': [
        ['egg', 'yes'],
      ]
    },
    'yes': {
      'question': 'Yes it does.',
      'answers': ['Ok'],
      'functions': [
        restart,
      ]
    },
  }
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
  String index;
  int itemCount;

  @override
  void initState() {
    super.initState();
    index = 'enter';
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
