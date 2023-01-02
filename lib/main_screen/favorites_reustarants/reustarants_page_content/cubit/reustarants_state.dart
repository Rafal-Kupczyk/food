part of 'reustarants_cubit.dart';

@immutable
class ReustarantsPageState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;

  final bool isLoading;
  final String errorMessage;

  const ReustarantsPageState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
