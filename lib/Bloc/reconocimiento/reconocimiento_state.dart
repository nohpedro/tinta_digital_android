part of 'reconocimiento_bloc.dart';

abstract class InkRecognitionState extends Equatable {
  const InkRecognitionState();

  @override
  List<Object> get props => [];
}

class InkRecognitionInitial extends InkRecognitionState {}

class InkRecognitionSuccess extends InkRecognitionState {
  final String recognizedText;

  const InkRecognitionSuccess(this.recognizedText);

  @override
  List<Object> get props => [recognizedText];
}

class InkRecognitionFailure extends InkRecognitionState {
  final String error;

  const InkRecognitionFailure(this.error);

  @override
  List<Object> get props => [error];
}