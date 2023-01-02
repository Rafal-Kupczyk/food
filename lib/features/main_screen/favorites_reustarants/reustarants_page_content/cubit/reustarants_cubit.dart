// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'reustarants_state.dart';

class ReustarantsPageCubit extends Cubit<ReustarantsPageState> {
  String? id;

  ReustarantsPageCubit()
      : super(const ReustarantsPageState(
          documents: [],
          errorMessage: '',
          isLoading: false,
        ));

  StreamSubscription? _streamSubscription;

  Future<void> deletedocuments(String id) async {
    FirebaseFirestore.instance.collection('reustarants').doc(id).delete();
  }

  Future<void> start() async {
    emit(
      const ReustarantsPageState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('reustarants')
        .orderBy('rating', descending: true)
        .snapshots()
        .listen((data) {
      emit(
        ReustarantsPageState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          ReustarantsPageState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
