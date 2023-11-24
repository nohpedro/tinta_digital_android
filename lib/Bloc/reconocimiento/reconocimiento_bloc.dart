import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reconocimiento_event.dart';
part 'reconocimiento_state.dart';

class ReconocimientoBloc extends Bloc<ReconocimientoEvent, ReconocimientoState> {
  ReconocimientoBloc() : super(ReconocimientoInitial()) {
    on<ReconocimientoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
