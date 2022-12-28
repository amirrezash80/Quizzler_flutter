import 'package:flutter/material.dart';
import 'QuizBrain.dart';
import 'Restart.dart';

Quizbrain quizbrain = new Quizbrain();

void main() async {
  runApp(
    RestartWidget(child: Quizzler()),
  );
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> ScoreKeeper = [];
  int Score = quizbrain.getscore();

  void checking(bool user) {
    if (quizbrain.getans() == user) {
      quizbrain.addscore();
      Score = quizbrain.getscore();
      quizbrain.delete(ScoreKeeper);
      ScoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      quizbrain.delete(ScoreKeeper);
      ScoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Your Score =  $Score",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                quizbrain.restart();
                RestartWidget.restartApp(context);
              },
              child: Center(
                child: Text(
                  "Restart",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                quizbrain.getques(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.cyanAccent,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  checking(true);
                  //TODO
                  quizbrain.nextques();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  checking(false);
                  quizbrain.nextques();
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey),
              borderRadius: BorderRadius.all(Radius.circular(
                      20.0) //                 <--- border radius here
                  ),
            ),
            child: Row(
              children: ScoreKeeper,
            ),
          ),
        )
      ],
    );
  }
}
