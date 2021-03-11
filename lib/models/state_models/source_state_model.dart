import 'package:freezed_annotation/freezed_annotation.dart';

part "source_state_model.freezed.dart";

@freezed
abstract class SourceState with _$SourceState{
  const factory SourceState.loading() = Start;
  const factory SourceState.notLogged() = NotLogged;
  const factory SourceState.logged() = Logged;
  //const factory SourceState.onError() = Error;
}