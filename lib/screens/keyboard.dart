import 'package:mobx/mobx.dart';
 
part 'keyboard.g.dart';

class Controller_key = _ControllerKey with _$Controller_key;

abstract class _ControllerKey with Store{
  @observable
  String counter = "";

  @action
  void increment(String numero){
    if(counter.length < 10){
      counter += numero;
    }
  }

  @action 
  void decrement(){
    //counter -= counter.length
  }

  @action
  void clear(){
    counter = "";
  }
} 