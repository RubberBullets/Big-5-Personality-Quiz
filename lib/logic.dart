
import './questions.dart';

//Progress Indicator function//
  currentProgress(questionsCompleted, totalQuestions) {
    return (questionsCompleted / totalQuestions);
  }




  extroversionScore(extroversion){
    return (extroversion / 40);
  }
  agreeablenessScore(agreeableness){
    return (agreeableness / 40);
  }
  conscientiousnessScore(conscientiousness){
    return (conscientiousness / 40);
  }
  neuroticismScore(neuroticism){
    return (neuroticism / 40);
  }
  opennessScore(openness){
    return (openness / 40);
  }

//Scoring functions for big 5 segments//

  extroversion() {
    return (20 +
        questions[0]['score'] -
        questions[5]['score'] +
        questions[10]['score'] -
        questions[15]['score'] +
        questions[20]['score'] -
        questions[25]['score'] +
        questions[30]['score'] -
        questions[35]['score'] +
        questions[40]['score'] -
        questions[45]['score']);
  }

  agreeableness() {
    return (14 -
        questions[1]['score'] +
        questions[6]['score'] -
        questions[11]['score'] +
        questions[16]['score'] -
        questions[21]['score'] +
        questions[26]['score'] -
        questions[31]['score'] +
        questions[36]['score'] +
        questions[41]['score'] +
        questions[46]['score']);
  }

  conscientiousness() {
    return (14 +
        questions[2]['score'] -
        questions[7]['score'] +
        questions[12]['score'] -
        questions[17]['score'] +
        questions[22]['score'] -
        questions[27]['score'] +
        questions[32]['score'] -
        questions[37]['score'] +
        questions[42]['score'] +
        questions[47]['score']);
  }

  neuroticism() {
    return (38 -
        questions[3]['score'] +
        questions[8]['score'] -
        questions[13]['score'] +
        questions[18]['score'] -
        questions[23]['score'] -
        questions[28]['score'] -
        questions[33]['score'] -
        questions[38]['score'] -
        questions[43]['score'] -
        questions[48]['score']);
  }

  openness() {
    return (8 +
        questions[4]['score'] -
        questions[9]['score'] +
        questions[14]['score'] -
        questions[19]['score'] +
        questions[24]['score'] -
        questions[29]['score'] +
        questions[34]['score'] +
        questions[39]['score'] +
        questions[44]['score'] +
        questions[49]['score']);
  }
  