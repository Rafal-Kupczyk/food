// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:food/models/item_model.dart';
import 'package:food/repositories/items_repository.dart';

import 'package:meta/meta.dart';

part 'reustarants_state.dart';

class ReustarantsPageCubit extends Cubit<ReustarantsPageState> {
  String? id;

  ReustarantsPageCubit(this._itemsRepository)
      : super(const ReustarantsPageState(
          documents: [],
          errorMessage: '',
          isLoading: false,
          reustarantName: '',
          adresName: '',
          rating: '',
        ));

  final ItemsRepository _itemsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> deletedocuments(String id) async {
    await _itemsRepository.delete(id: id);
  }

  Future<void> addReustarant(
      String reustarantName, String adresName, String rating) async {
    try {
      await _itemsRepository.add(
          reustarantName: reustarantName, adresName: adresName, rating: rating);
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

    _streamSubscription = _itemsRepository.getItemsStream().listen((items) {
      emit(
        ReustarantsPageState(
          documents: items,
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
