part of 'reustarants_cubit.dart';

@immutable
class ReustarantsPageState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;

  final bool isLoading;
  final String errorMessage;
  final String reustarantName;
  final String adresName;
  final String rating;

  const ReustarantsPageState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
    required this.adresName,
    required this.reustarantName,
    required this.rating
  });
}
