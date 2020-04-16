import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';
import 'cards.dart';
import 'resultspage.dart';
import 'brain.dart';

const kActiveCardColor = Color(0xFF1D1F33);
const kInactiveCardColor = Color(0xFF111328);
//we can make a separate constants file 
enum Gender{
  Male,
  Female
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender selectedGender;
  int height=120;
  int weight = 60;
  int age = 18;

//  void updateCardColor(Gender gender){
//    if(gender==Gender.Male){
//      if(maleCardColor==inactiveCardColor){
//         maleCardColor=activeCardColor;
//        femaleCardColor=inactiveCardColor;
//      }
//      else{
//        maleCardColor=inactiveCardColor;
//      }
//    }
//    else if(gender==Gender.Female){
//      if(femaleCardColor==inactiveCardColor){
//        femaleCardColor=activeCardColor;
//        maleCardColor=inactiveCardColor;
//      }
//      else{
//        femaleCardColor=inactiveCardColor;
//      }
//    }
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender=Gender.Male;
                        });
                      },
                      child: Cards(
                        colour: selectedGender==Gender.Male?kActiveCardColor:kInactiveCardColor,
                        cardChild: CardChild(icon: FontAwesomeIcons.mars,label: 'MALE'),
                      ),
                    ),
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender=Gender.Female;
                        });
                      },
                      child: Cards(colour: selectedGender==Gender.Female?kActiveCardColor:kInactiveCardColor,
                        cardChild: CardChild(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                      ),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Cards(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white70,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                           SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.white70,
                                thumbColor: Colors.redAccent,
                                overlayColor: Color(0x29EB1555),
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newVal){
                                setState(() {
                                  height=newVal.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Cards(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                heroTag: 'btn1',
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.minus,color: Colors.white),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                heroTag: 'btn2',
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.plus,color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    colour: kActiveCardColor,
                    ),
                ),
                Expanded(
                  child: Cards(
                      colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 50.0,
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: 'btn3',
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(FontAwesomeIcons.minus,color: Colors.white),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'btn4',
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(FontAwesomeIcons.plus,color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Brain calc = Brain(height: height,weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultsPage(
                  res: calc.getRes(),
                  comment: calc.getComment(),
                  finaltext: calc.getIntepretation(),
                );
              },),
              );
            },
            child: Container(
              height: 65.0,
              width: double.infinity,
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


