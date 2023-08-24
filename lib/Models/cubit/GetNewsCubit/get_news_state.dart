part of 'get_news_cubit.dart';

@immutable
class GetNewsState {}

class GetNewsInitial extends GetNewsState {}

class GetNewsLoading extends GetNewsState {}

class GetNewsSuccess extends GetNewsState {
  final GetNewsModel response;
  GetNewsSuccess({required this.response});
}

class GetNewsError extends GetNewsState {}
