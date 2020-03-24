import 'dart:math';

import 'package:mobx/mobx.dart';
part 'memory.g.dart';

class Memory = _MemoryBase with _$Memory;

abstract class _MemoryBase with Store {
  
  @observable
  int A = 0;
  @action 
  changeA(int newValue) { 
    A = newValue != null ? newValue : 0;
    changeDelta();
  }

  @observable
  int B = 0;
  @action 
  changeB(int newValue) { 
    B = newValue != null ? newValue : 0;
    changeDelta();
  }

  @observable
  int C = 0;
  @action 
  changeC(int newValue) {
    C = newValue != null ? newValue : 0;
    changeDelta();
  }

  @observable
  int delta = 0;
  @action 
  changeDelta() {
    if (A != 0 || B != 0 || C != 0) {
      delta = (pow(B, 2)) + (-4*A*C);
      changeX1();
      changeX2();
    }
  }
  
  @observable
  double x1 = 0;
  @action 
  changeX1() => x1 = (-B + sqrt(delta))/(2*A);

  @observable
  double x2 = 0; 
  @action 
  changeX2() => x2 = (-B - sqrt(delta))/(2*A);
}