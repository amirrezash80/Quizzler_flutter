import 'dart:math';
import 'Question.dart';

class Quizbrain {
  int _quesnum = 0;
  int _score = 0;
  Random random = new Random();
  List<Question> _ques = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('The atomic number for lithium is 17', false),
    Question('A cross between a horse and a zebra is called a \'Hobra', false),
    Question(' The black box in a plane is black', false),
    Question('Alliumphobia is a fear of garlic', true),
    Question(
        'Sex Education star Gillian Anderson was born in Chicago, Illinois',
        true),
    Question('Prince Harry is taller than Prince William', false),
    Question('The star sign Aquarius is represented by a tiger', false),
    Question('Meryl Streep has won two Academy Awards', false),
    Question('Marrakesh is the capital of Morocco', false),
    Question(
        ' Idina Menzel sings \'let it go\' 20 times in \'Let It Go\' from Frozen',
        false),
    Question(
        'Waterloo has the greatest number of tube platforms in London', false),
    Question('M&M stands for Mars and Moordale', true),
    Question(' Gin is typically included in a Long Island Iced Tea', false),
    Question(' The unicorn is the national animal of Scotland', true),
    Question(
        ' There are two parts of the body that can\'t heal themselves', false),
    Question(' Howard Donald is the oldest member of Take That', true),
    Question(
        ' The Great Wall of China is longer than the distance between London and Beijing',
        true),
    Question(' There are 219 episodes of Friends', false),
    Question('  \'A\' is the most common letter used in the English language',
        false),
    Question('  A lion\'s roar can be heard up to eight kilometres away', true),
    Question(' In Harry Potter, Draco Malfoy has no siblings', false),
    Question(' Louis Walsh is older than Simon Cowell', true),
    Question(' Monaco is the smallest country in the world', false),
    Question(
        ' \'What Do You Mean\' was Justin Bieber\'s first UK number one single',
        true),
    Question(
        ' The river Seine in Paris is longer than the river Thames in London',
        true),
    Question(' A cara cara navel is a type of orange', true),
    Question(' There are five different blood groups', false),
    Question(' Cinderella was the first Disney princess', false),
    Question(' ASOS stands for As Seen On Screen', true),
    Question(' The Battle Of Hastings took place in 1066', true),
    Question('  H&M stands for Hennes & Mauritz', true),
    Question('Canis lupur is the scientific name for a wolf', false),
    Question(' K is worth four points in Scrabble', false),
    Question(' Alaska is the biggest American state in square miles', true),
    Question(' Ariana Grande is 25 or under', false),
    Question(' Australia is wider than the moon', true),
    Question(
        ' Queen Elizabeth II is currently the second longest reigning British monarch',
        false),
    Question(' Madonna\'s real name is Madonna', true),
    Question(
        ' Serena Williams has one more singles tennis Grand Slam titles than sister Venus',
        false),
    Question('Alexander Fleming discovered penicillin', true),
    Question('Harry Styles\' middle name is Edward', true),
    Question('Your \'radius\' bone is in your leg', true),
    Question('Coffee is made from berries', true),
    Question('Drag Race\'s Michelle Visage is older than RuPaul', false),
    Question('The only letter not in the periodic table is the letter J', true),
    Question('Jordan North won I\'m A Celebrity... Get Me Out Of Here! in 2020',
        false),
    Question(
        'The small intestine is about three-and-a-half times the length of your body',
        true),
    Question('An octopus has three hearts', false),
    Question('Thomas Edison discovered gravity', true),
    Question('Walt Disney holds the record for the most Oscars', false),
    Question('Spaghetto is the singular word for a piece of spaghetti', true),
  ];

  void nextques() {
    _quesnum = random.nextInt(_ques.length);
  }

  String getques() {
    return _ques[_quesnum].ques;
  }

  bool getans() {
    return _ques[_quesnum].ans;
  }

  int getlength() {
    return _ques.length;
  }

  void addscore() {
    _score++;
  }

  int getscore() {
    return _score;
  }

  void restart() {
    _quesnum = 0;
    _score = 0;
  }

  void delete(List icons) {
    if (icons.length == 14) icons.removeAt(0);
  }
}
