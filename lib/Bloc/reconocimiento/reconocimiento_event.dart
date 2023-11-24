part of 'reconocimiento_bloc.dart';

abstract class InkRecognitionEvent extends Equatable {
  const InkRecognitionEvent();

  @override
  List<Object> get props => [];
}

class PerformInkRecognition extends InkRecognitionEvent {
  final List<Offset> inkData;

  const PerformInkRecognition(this.inkData);

  @override
  List<Object> get props => [inkData];
}
