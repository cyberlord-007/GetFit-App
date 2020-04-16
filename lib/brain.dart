import 'dart:math';

class Brain{
  Brain({this.height,this.weight});
  final int height;
  final int weight;
  double _result;

  String getRes(){
    _result= (weight)/(pow(height/100,2));
    return _result.toStringAsFixed(1);
  }

  String getComment(){
    if(_result>=25){
      return 'OVERWEIGHT';
    }
    else if(_result>18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getIntepretation(){
    if(_result>=25){
      return 'Whoa, Getting fat huh!, your BMI shows you are overweight, so you need to exercise more, eat less and healthy.';
    }
    else if(_result>18.5){
      return 'Congo!!, your BMI is normal, need not to worry just keep living the wonderful healthy life you were living until now.';
    }
    else{
      return 'Dude, you really need to take care of your health,your BMI shows you are underweight,that means you need to eat a lot in discplined and regular manner.';
    }
  }
}