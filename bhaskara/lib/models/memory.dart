import 'dart:math';

class Memory{
  int A = 0;
  int B = 0;
  int C = 0;

  int delta;

  double xPositive;
  double xNegative;

  setNumber(String type, int newValue){
    if (type == 'A')
      this.A = newValue;
    else if (type == 'B')
      this.B = newValue;
    else if (type == 'C')
      this.C = newValue;
  }

  int get getDelta{
    return this.delta;
  } 

  set setDelta(int newValue){
    this.delta = newValue;
  }

  void calcDelta(){
    if (A > 0 && B > 0 && C > 0) 
      delta = (pow(B, 2)) * -4*A*C;
    else 
      delta = 0;
  }

  void calcBhaskaraXPositive(){
    this.xPositive = (-B + sqrt(delta))/(2*A);
  }

  void calcBhaskaraXNegative(){
    this.xNegative = (-B - sqrt(delta))/(2*A);
  }
}