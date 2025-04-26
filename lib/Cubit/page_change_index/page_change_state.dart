// ignore_for_file: override_on_non_overriding_member

part of 'page_change_cubit.dart';

@immutable
abstract class PageChangeState {}

class PageChangeInitial extends PageChangeState {

}class PageChangehome extends PageChangeState {
  PageChangehome({ this.moves});
  final String? moves;
  @override
  List<Object> get props => [moves!];
}
class PageChangeaboutUss extends PageChangeState {}
class PageContactUSS extends PageChangeState {}
class PageourPartners extends PageChangeState {}
class PagePagess extends PageChangeState {}
class Pageservicess extends PageChangeState {
   Pageservicess({required this.indexes});
  final int indexes;
  @override
  List<Object> get props => [indexes];

}
