import 'package:bloc/bloc.dart';
import 'package:blocpractice/app/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitStates());

  static CounterCubit get (BuildContext context){
    return BlocProvider.of(context);
  }

  int number =1;

  void increaseNumber(){
    number++;
    emit(CounterIncreaseNumber());
  }

  void decreaseNumber(){
    number--;
    emit(CounterDeIncreaseNumber());
  }


}