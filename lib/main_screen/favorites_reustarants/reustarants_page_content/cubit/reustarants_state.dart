// ignore_for_file: prefer_const_constructors_in_immutables

part of 'reustarants_cubit.dart';

@immutable
class ReustarantsPageState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
 

  final bool isLoading;
  final String errorMessage;

  ReustarantsPageState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
   
  });
}
