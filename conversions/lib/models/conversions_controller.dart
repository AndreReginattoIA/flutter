import 'package:conversions/models/conversion_abs.dart';
import 'package:conversions/models/conversions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'conversions_controller.g.dart';

class ConversionsController = _ConversionsControllerBase with _$ConversionsController;

abstract class _ConversionsControllerBase with Store {

  var lists = [ConversionsList(), ConversionsList()];

  @observable
  int currentIndex = 0;
  @action
  setCurrentIndex(int newValue){
    currentIndex = newValue;
  }

  @observable
  String valor1 = "0";
  @action
  setValor1(String newValue) => valor1 = newValue;

  String getResult(){
    String auxBaseValue = lists[0].getFromNormal(valor1);
    return lists[1].getToNormal(auxBaseValue);
  }

  setLists(List<ConversionAbs> newValue){
    lists[0].setList(newValue);
    lists[1].setList(newValue);
  }

  Widget displayed() {

    return Row( 
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: lists[0].list.length,
            itemBuilder: (BuildContext context, int index) {
              return Observer(
                builder: (_){
                  return RadioListTile(
                    title: Text(lists[0].list[index].description),
                    value: lists[0].list[index].index,
                    groupValue: lists[0].indexSelected,
                    onChanged: (newValue) {
                      lists[0].setIndexSelected(newValue);
                    },
                  );
                },
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: lists[1].list.length,
            itemBuilder: (BuildContext context, int index) {
              return Observer(
                builder: (_){
                  return RadioListTile(
                    title: Text(lists[1].list[index].description),
                    value: lists[1].list[index].index,
                    groupValue: lists[1].indexSelected,
                    onChanged: (newValue) {
                      lists[1].setIndexSelected(newValue);
                    },
                  );
                },
              );
            },
          ),
        ),
      ]      
    );
  }
}