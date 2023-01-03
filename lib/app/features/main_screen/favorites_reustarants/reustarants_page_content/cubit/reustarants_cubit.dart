// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food/models/item_model.dart';

import 'package:meta/meta.dart';

part 'reustarants_state.dart';

class ReustarantsPageCubit extends Cubit<ReustarantsPageState> {
  String? id;

  ReustarantsPageCubit()
      : super(const ReustarantsPageState(
          documents: [],
          errorMessage: '',
          isLoading: false,
          reustarantName: '',
          adresName: '',
          rating: '',
        ));

  StreamSubscription? _streamSubscription;

  Future<void> deletedocuments(String id) async {
    FirebaseFirestore.instance.collection('reustarants').doc(id).delete();
  }

  Future<void> addReustarant(
      String reustarantName, String adresName, String rating) async {
    try {
      await FirebaseFirestore.instance.collection('reustarants').add({
        'name': reustarantName,
        'adres': adresName,
        'rating': rating,
      });
    } catch (error) {
      emit(
        ReustarantsPageState(
          documents: const [],
          isLoading: true,
          errorMessage: error.toString(),
          adresName: adresName,
          reustarantName: reustarantName,
          rating: rating,
        ),
      );
    }
  }

  Future<void> start() async {
    emit(
      const ReustarantsPageState(
        documents: [],
        errorMessage: '',
        isLoading: true,
        reustarantName: '',
        adresName: '',
        rating: '',
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
          reustarantName: '',
          adresName: '',
          rating: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          ReustarantsPageState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
            reustarantName: '',
            adresName: '',
            rating: '',
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
