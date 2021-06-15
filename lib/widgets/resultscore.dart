import 'package:flutter/material.dart';


class ResultScore extends StatelessWidget {
  final double progressValue;
  final String resultTotalText;
  final int resultTotalScore;
  final String personalityKey;
  final Color resultColor;

  String get resultPhrasePI {
    String resultText = 'You did it!';
    String personalityText;

    if (resultTotalScore <= 8) {
      resultText = 'Your ' + personalityKey + ' is Very Low';
      if (personalityKey == 'Extroversion') {
        personalityText =
            '''You lean Heavily towards an Introvert. Thus You prefer to spend more time alone or with a few close friends.

You tend to feel worn out after socializing a lot and need to recharge yourself with some time alone.

You seem to find it hard to make new friends or engage in random conversations or small talk with new people.

You are a much more reserved & private person than others but it can come off as standoffish by some people.
        

''';
      } else if (personalityKey == 'Openness') {
        personalityText =
            '''You are more Traditional in your thinking patterns, opting for the tried and tested rather than trying something new.
        
You can sometimes be seen as closed minded by others due to you not entertaining new thoughts or ideas.

You tend to avoid major changes as anything that shifts you from your comfort zone creates major unease for you.
''';
      } else if (personalityKey == 'Agreeableness') {
        personalityText =
            '''A low agreeableness score may mean you tend hold grudges. You might also be less sympathetic with others. 
        
You can be seen as stubborn and self-centered by others.You also tend to find it difficult to forgive others.
        
But you are also likely avoid the pitfalls of comparing yourself to others or caring about what others think of you.''';
      } else if (personalityKey == 'Conscientiousness') {
        personalityText =
            '''A low conscientiousness score might mean you prefer a setting without structure. This might make you appear unreliable to others.

You may prefer doing things at your own pace to working on a deadline. This however can get you to leave things to the very last minute!
        
You therefore can come across as impulsive and unorganised.
''';
      } else if (personalityKey == 'Neuroticism') {
        personalityText =
            '''A low neuroticism score can mean you’re confident. You may have more resilience and find it easy to keep calm under stress. Relaxation might also come more easily to you. Try to keep in mind that this might not be as easy for those around you, so be patient.
        
You tend to worry less and have a much more stable mood than others, which makes you seem more optimistic to people compaired to others.
''';
      }
    } else if (resultTotalScore <= 16) {
      //extroversion()
      resultText = 'Your ' + personalityKey + ' is Low';
      if (personalityKey == 'Extroversion') {
        personalityText =
            '''You enjoy time alone to yourself but don\'t fear huge crowds or groups. You would rather be at home reading a book or playing a game than out in public.
        
Talking to other doesn't come naturally to you, however you don't mind engaging someone if they start the conversation.

You find solice in some alone time to help you recharge from social gatherings.
''';
      } else if (personalityKey == 'Openness') {
        personalityText =
            '''You have a set way of doing things, but you don't mind hearing others out.
        
You are slightly reserved and don't share feelings or problems with others easily. 

You seem steadfast to others in your way of doing things.
''';
      } else if (personalityKey == 'Agreeableness') {
        personalityText =
            '''You aren't afraid of conflict with others. You also don't allow what others think of you to affect you that much.
        
This however can make you come accross somewhat stubborn or self-centered to others.

''';
      } else if (personalityKey == 'Conscientiousness') {
        personalityText =
            '''You would rather do things in your own time, so you don't like to be thrown with deadlines.
        
You take things as they come with a happy go lucky approach to life.

You enjoy the freedom of choice more than running within structures set out for you.
''';
      } else if (personalityKey == 'Neuroticism') {
        personalityText =
            '''You don't let things get you down easily. you seem to be in control of your moods. 
        
Others find you pleasing to be around with and see you as a rock for support.

Due to your optimistic nature, people tend to gravitate towards you more.
''';
      }
    } else if (resultTotalScore <= 24) {
      resultText = 'Your ' + personalityKey + ' is Neutral';
      if (personalityKey == 'Extroversion') {
        personalityText =
            '''You are fairly balanced in terms over being an inrovert & extrovert. You thus find it easy to mingle with others and meet new people.
        
You can just as easily spend the whole day at home alone without a care in the world as you are comfortable almost anywhere.

Depending on your mood, you can either be the life of the party or just chill in a corner with your thoughts.
''';
      } else if (personalityKey == 'Openness') {
        personalityText =
            '''You are a person of habit, so you enjoy a routine yet you don't mind trying something new just for change now and then.

You are open to new ideas, but would rather gauge them against what you already know before just accepting anything new.
        ''';
      } else if (personalityKey == 'Agreeableness') {
        personalityText =
            '''You are open and friendly with others. You also know when to confront people if needed. You Thus tend to Stand your ground when you deem fit for the situation and people respect you for that.
        
You show interest in others but don't mind if you cannot make a friends with everyone. People find you easy to talk to and share thoughts with.
        ''';
      } else if (personalityKey == 'Conscientiousness') {
        personalityText =
            '''You like a bit of structure to your day, but don't enjoy overbearing repetitiveness. Having a bit of structure for the day makes things just flow easier for you.
        
You don't mind when things get a bit messy, however, a nice clean room does make you feel just that bit more relaxed in the envirnment.

Rules are there to follow, to a point. If you don't see a specific need for a way of doing something, you don't mind changing the flow a bit.
         ''';
      } else if (personalityKey == 'Neuroticism') {
        personalityText =
            '''You have an average emotional balance. When you do have an emotional period, you can quickly identify what it is and then calm yourself to get back in control of your emotions.

You have beliein your own abilities and thus can take it when someone tries to talk you down. However, when they hit a spot that you judge yourself more harshly on, it can hurt a lot more. You do realize at least as well that everyone else worries more about what others think of them, so you don't burden yourself too much with what others think of you.         

''';
      }
    } else if (resultTotalScore <= 32) {
      resultText = 'Your ' + personalityKey + ' is High';
      if (personalityKey == 'Extroversion') {
        personalityText =
            '''You have a adventure seeking streak and love excitement. You also seem to make new friends easily as it comes naturally to you.
        
You enjoy doing activities with others and feed of their energy as well. Sometime in all the excitement you can speak without thinking.
''';
      } else if (personalityKey == 'Openness') {
        personalityText =
            '''You enjoy trying new things, like new recipes or food dishes. You also tend to be more creative than others in terms of your thinking process.
        
You have a great imagination which helps you to more easily except new constructs or ideas.
''';
      } else if (personalityKey == 'Agreeableness') {
        personalityText =
            '''You Enjoy helping others and show interest in people in general. This makes you more inviting to people and they tend to seek your input on matters.
        
You believe in being honest to others and try to see the best in them.
''';
      } else if (personalityKey == 'Conscientiousness') {
        personalityText =
            '''Preparedness is your tool! you make sure to think things through and plan ahead thoroughly. 
        
You don't like loose ends and are resilient in making sure things run the way you expet them to.

This makes you very Goal driven and has other see you as a dependable and reliable person.
''';
      } else if (personalityKey == 'Neuroticism') {
        personalityText =
            '''You can get stressed easily and have mood swings now and then. This can make you struggle with difficult situations.
        
You often feel vulnerable in situation which makes you seem insecure to others. 
''';
      }
    } else if (resultTotalScore <= 40) {
      resultText = 'Your ' + personalityKey + ' is Very High';
      if (personalityKey == 'Extroversion') {
        personalityText =
            '''If you score high on extraversion, you might consider yourself an extrovert. You might enjoy attention and feel recharged after spending time with friends. You likely feel your best when in a large group of people.

On the other hand, you may have trouble spending long periods of time alone.
''';
      } else if (personalityKey == 'Openness') {
        personalityText =
            '''A high score on openness can mean you have broad interests. You may enjoy solving problems with new methods and find it easy to think about things in different ways. Being open to new ideas may help you adjust easily to change.

Just make sure to keep an eye out for any situations where you might need to establish boundaries, whether that be with family members or your work-life balance.
''';
      } else if (personalityKey == 'Agreeableness') {
        personalityText =
            '''If you score high in agreeableness, you you’re helpful and cooperative. Your loved ones may often turn to you for help. People might see you as trustworthy. You may be the person others seek when they’re trying to resolve a disagreement.

In some situations, you might a little too trusting or willing to compromise. Try to balance your knack for pleasing others with self-advocacy.
''';
      } else if (personalityKey == 'Conscientiousness') {
        personalityText =
            '''If you are a conscientious person, you might follow a regular schedule and have a knack for keeping track of details. You likely deliberate over options and work hard to achieve your goals. Coworkers and friends might see you as a reliable, fair person.

You may tend to micromanage situations or tasks. You might also be cautious or difficult to please.''';
      } else if (personalityKey == 'Neuroticism') {
        personalityText =
            '''If you score high on neuroticism, you may blame yourself when things go wrong. You might also get frustrated with yourself easily, especially if you make a mistake. Chances are, you’re also prone to worrying.

But you’re likely also more introspective than others, which helps you to examine and understand your feelings more than others do their own. You also wear your heart on your sleeve.
''';
      }
    }
    return "$resultText" +
        '''
    

''' +
        "$personalityText";
  }

  ResultScore(
      {this.progressValue,
      this.resultTotalText,
      this.resultTotalScore,
      this.personalityKey,
      this.resultColor});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                child: CircularProgressIndicator(
                  value: progressValue,
                  //extroversionScore(
                  //   extroversion()),
                  backgroundColor: Colors.grey,
                  strokeWidth: 10,
                  semanticsLabel: 'progress',
                  valueColor: AlwaysStoppedAnimation<Color>(resultColor),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  resultTotalText,
                  //  'Your Extroversion Score is: ' +
                  //      extroversion().toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Text(
              resultPhrasePI,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      );
  }
}
