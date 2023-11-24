import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_ml_kit/google_ml_kit.dart'; // Importar Google ML Kit

part 'reconocimiento_event.dart';
part 'reconocimiento_state.dart';


class InkRecognitionBloc extends Bloc<InkRecognitionEvent, InkRecognitionState> {
  final DigitalInkRecognitionProcessor _digitalInkRecognitionProcessor =
  DigitalInkRecognitionProcessor();

  InkRecognitionBloc() : super(InkRecognitionInitial());

  @override
  Stream<InkRecognitionState> mapEventToState(InkRecognitionEvent event) {
    if (event is PerformInkRecognition) {
      return _recognizeInk(event.inkData);
    } else {
      throw Exception('Unexpected event: ${event}');
    }
  }

  Stream<InkRecognitionState> _recognizeInk(List<Offset> inkData) async* {
    try {
      final recognizedText = await _digitalInkRecognitionProcessor
          .processPoints(inkData);
      yield InkRecognitionSuccess(recognizedText);
    } catch (error) {
      yield InkRecognitionFailure(error.toString());
    }
  }
}

