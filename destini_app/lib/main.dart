import 'package:destini_app/story_brain.dart';
import 'package:flutter/material.dart';


void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final storyTeller = StoryTeller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        decoration:
            const BoxDecoration(image: DecorationImage(image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyTeller.getStory().storyTitle,
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyTeller.showChoice1(),
                  child: MaterialButton(
                    onPressed: () {
                      //Choice 1 made by user.
                      setState(() => storyTeller.nextStory(Choice.choice1));
                    },
                    color: Colors.red,
                    child: Text(
                      storyTeller.getChoice1(),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyTeller.showChoice2(),
                  child: MaterialButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      setState(() => storyTeller.nextStory(Choice.choice2));
                    },
                    color: Colors.blue,
                    child: Text(
                      storyTeller.getChoice2(),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


