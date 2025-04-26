// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'page_change_state.dart';

class PageChangeCubit extends Cubit<PageChangeState> {
  PageChangeCubit() : super(PageChangeInitial());

  void home({String? move}){
    emit(PageChangehome(moves:move));
  }
  void aboutUss(){
    emit(PageChangeaboutUss());
  }
  void ContactUSS(){
    emit(PageContactUSS());
  }
  void ourPartners(){
    emit(PageourPartners());
  }
  void Pagess(){
    emit(PagePagess());
  }
  void servicess({required int index}){
    emit(Pageservicess(indexes: index));
  }
}
