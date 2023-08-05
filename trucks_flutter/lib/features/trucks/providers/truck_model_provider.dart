import 'package:trucks_client/trucks_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/utils/singletons.dart';
import 'package:trucks_flutter/utils/api_client.dart';

class TruckModelProvider extends StateNotifier<List<TruckModel>> {
  final truckModelClient = singleton<ApiClient>().client.truckModel;
  final Ref ref;

  TruckModelProvider(this.ref) : super([]) {
    load();
  }

  load() async {
    state = await truckModelClient.readAll();
  }

  create({
    required String brandName,
    required String modelName,
    String status = 'Active',
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) async {
    await truckModelClient.create(
      brandName: brandName,
      modelName: modelName,
      status: status,
      modifiedBy: modifiedBy,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
    );
    load();
  }
}

final truckModelProvider =
    StateNotifierProvider<TruckModelProvider, List<TruckModel>>(
        (ref) => TruckModelProvider(ref));
