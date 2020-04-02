import 'package:conversions/models/conversions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'conversions_controller.g.dart';

class ConversionsController = _ConversionsControllerBase with _$ConversionsController;

abstract class _ConversionsControllerBase with Store {

  Widget displayed() {
    var list = ConversionsList();

    return  
    Row(
      children: [
        ListView.builder(
          itemCount: list.list.length,
          itemBuilder: (BuildContext context, int index) {
            return Observer(
              builder: (_){
                return RadioListTile(
                  title: Text(list.list[index].description),
                  value: list.list[index].description,
                  groupValue: list.selected,
                  onChanged: (newValue) {
                    list.setSelected(newValue);
                  },
                );
              },
            );
          },
        ),
      ]      
    );
  }
}